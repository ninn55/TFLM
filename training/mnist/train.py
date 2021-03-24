import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense, Conv2D, MaxPooling2D, ReLU, Flatten, Softmax
from tensorflow.keras.callbacks import EarlyStopping
from tensorflow.keras.optimizers import Adam
from tensorflow.keras.initializers import RandomNormal

from tensorflow.keras.preprocessing.image import ImageDataGenerator
from tensorflow.keras.callbacks import ModelCheckpoint

from time import time
from subprocess import call
from matplotlib import pyplot as plt
import numpy as np

from backend.FileHelper import toByteBuffer

def getDataSet():
    (x_train, y_train), (x_test, y_test) = tf.keras.datasets.mnist.load_data()
    datagen = ImageDataGenerator(
        # featurewise_center=True,
        # featurewise_std_normalization=True,
        # shear_range = 2,
        fill_mode = "constant",
        cval = 0,
        width_shift_range = [-0.1, 0.1],
        height_shift_range = [-0.1, 0.1],
        zoom_range = [0.9, 1])
    datagen.fit(x_train.reshape((x_train.shape[0], 28, 28, 1)))
    x_train, y_train = datagen.flow(x_train.reshape((x_train.shape[0], 28, 28, 1)), y_train, batch_size = 60000, shuffle = True).next()
    x_train = x_train.reshape((60000, 28, 28))
    x_train = x_train.reshape((x_train.shape[0], 28, 28, 1)).astype("float32") / 255
    x_test = x_test.reshape((x_test.shape[0], 28, 28, 1)).astype("float32") / 255

    y_train = tf.keras.utils.to_categorical(y_train)
    y_test = tf.keras.utils.to_categorical(y_test)
    return x_train, y_train, x_test, y_test

def create_model():
    model = Sequential()
    
    model.add(Conv2D(2, 3, activation = None,use_bias = False, \
                input_shape = (28, 28, 1), padding = "valid", \
                data_format='channels_last', dilation_rate = (1, 1), strides = (1, 1), \
                kernel_initializer = RandomNormal(mean = 0.0, stddev = 0.05, seed = int(time()) ) \
            ))
    
    model.add(ReLU(max_value=None, negative_slope=0, threshold=0))
    
    model.add(Conv2D(4, 3, activation = None,use_bias = False, \
                padding = "valid", \
                data_format='channels_last', dilation_rate = (1, 1), strides = (1, 1), \
                kernel_initializer = RandomNormal(mean = 0.0, stddev = 0.05, seed = int(time()) ) \
            ))
    
    model.add(ReLU(max_value=None, negative_slope=0, threshold=0))
    
    model.add(MaxPooling2D((2, 2), strides= (2, 2), padding = "valid", data_format = "channels_last"))
    
    model.add(Conv2D(8, 3, activation = None,use_bias = False, \
                input_shape = (28, 28, 1), padding = "valid", \
                data_format='channels_last', dilation_rate = (1, 1), strides = (1, 1), \
                kernel_initializer = RandomNormal(mean = 0.0, stddev = 0.05, seed = int(time()) ) \
            ))
    
    model.add(ReLU(max_value=None, negative_slope=0, threshold=0))
    
    model.add(Conv2D(16, 3, activation = None,use_bias = False, \
                padding = "valid", \
                data_format='channels_last', dilation_rate = (1, 1), strides = (1, 1), \
                kernel_initializer = RandomNormal(mean = 0.0, stddev = 0.05, seed = int(time()) ) \
            ))
    
    model.add(ReLU(max_value=None, negative_slope=0, threshold=0))
    
    model.add(MaxPooling2D((2, 2), strides = (2, 2), padding = "valid", data_format = "channels_last"))
    
    model.add(Flatten())
    
    model.add(Dense(10, activation = None, use_bias = True, \
                   kernel_initializer = RandomNormal(mean = 0.0, stddev = 0.05, seed = int(time()) ) \
                   ))
    
    model.add(Softmax(axis = 1))
    
    optimizer = Adam(lr=0.0001)
    model.compile(loss="categorical_crossentropy", \
                    optimizer=optimizer, metrics=["accuracy"])
    return model

def plotTrainningResult(history):
    plt.figure(figsize=(15, 5))

    plt.subplot(1, 3, 1)
    plt.plot(history.history['accuracy'])
    plt.plot(history.history['val_accuracy'])
    plt.title('Accuracy')
    plt.ylabel('Accuracy')
    plt.xlabel('Step')
    plt.legend(['Train', 'Test'], loc='lower right')

    plt.subplot(1, 3, 2)
    plt.plot(history.history['loss'])
    plt.plot(history.history['val_loss'])
    plt.title('Loss')
    plt.ylabel('Loss')
    plt.xlabel('Step')
    plt.legend(['Train', 'Test'], loc='upper right')

    plt.subplot(1, 3, 3)
    plt.plot(1 - np.array(history.history['accuracy']))
    plt.plot(1 - np.array(history.history['val_accuracy']))
    plt.title('Error Rate')
    plt.ylabel('Error')
    plt.xlabel('Step')
    plt.legend(['Train', 'Test'], loc='upper right')

    plt.tight_layout()

    plt.savefig('./model/training.jpg')

def evaluateModel(model, x_test, y_test):
    scores = KerasModel.evaluate(x_test, y_test, verbose=2)
    print("Final, Test Loss:", scores[0])
    print("Final, Test Accuracy:", scores[1])

def toTensorflowLite(model, x_test):
    mnist_sampleset = tf.data.Dataset.from_tensor_slices((x_test)).batch(1)
    def representative_dataset_gen():
        for input_value in mnist_sampleset.take(100):
            yield [input_value]

    converter = tf.lite.TFLiteConverter.from_keras_model(model)
    tflite_model = converter.convert()
    open("./model/model.tflite", "wb").write(tflite_model)

if __name__ == "__main__":
    x_train, y_train, x_test, y_test = getDataSet()
    KerasModel = create_model()
    earlystopping = EarlyStopping(monitor = "val_loss", mode = 'min', patience = 5,\
                              restore_best_weights = True)
    try:
        call('rm -rf ./model/modelCheckpoint/', shell=True)
    except:
        pass
    checkpointCallback = tf.keras.callbacks.ModelCheckpoint(\
                                filepath = "../model/modelCheckpoint/", \
                                verbose = 1, \
                                save_weights_only = True,\
                                save_freq = "epoch")
    history = KerasModel.fit(x_train, y_train, batch_size = 64, epochs = 100000, 
                    validation_data = (x_test, y_test) , verbose = 1, steps_per_epoch = x_train.shape[0] / 64,
                    callbacks=[earlystopping, checkpointCallback])
    KerasModel.save("./model/mnist.h5")
    plotTrainningResult(history)
    evaluateModel(KerasModel, x_test, y_test)
    toTensorflowLite(KerasModel, x_test)
    toByteBuffer("./model/model.tflite", "./model/model.h")
