"""
Validate our RNN. Basically just runs a validation generator on
about the same number of videos as we have in our test set.
"""
from keras.callbacks import TensorBoard, ModelCheckpoint, CSVLogger
from models import ResearchModels
from data import DataSet
import argparse


def validate(data_type, model, seq_length=40, saved_model=None,
             class_limit=None, image_shape=None):
    batch_size = 32

    # Get the data and process it.
    if image_shape is None:
        data = DataSet(
            seq_length=seq_length,
            class_limit=class_limit
        )
    else:
        data = DataSet(
            seq_length=seq_length,
            class_limit=class_limit,
            image_shape=image_shape
        )

    val_generator = data.frame_generator(batch_size, 'test', data_type)

    # Get the model.
    rm = ResearchModels(len(data.classes), model, seq_length, saved_model)

    # Evaluate!
    results = rm.model.evaluate_generator(
        generator=val_generator,
        val_samples=3200)

    print(results)
    print(rm.model.metrics_names)


def main():

    parser = argparse.ArgumentParser()
    parser.add_argument("-m", "--model",
                        help="Select a model to train (conv_3d, c3d, lrcn, lstm, mlp)")
    args = parser.parse_args()

    # Fetch model selection
    model = args.model

    if model in ['conv_3d', 'c3d', 'lrcn']:
        data_type = 'images'
        image_shape = (80, 80, 3)
        if model == 'conv_3d':
            saved_model = '/data/d14122793/UCF101_Video_Classi/data/checkpoints/conv_3d-images.019-1.926.hdf5'
            validate(data_type, model, saved_model=saved_model,
                     image_shape=image_shape, class_limit=30)

        elif model == 'c3d':
            saved_model = '/data/d14122793/UCF101_Video_Classi/data/checkpoints/c3d-images.012-2.149.hdf5'
            validate(data_type, model, saved_model=saved_model,
                     image_shape=image_shape, class_limit=30)

        else:
            saved_model = '/data/d14122793/UCF101_Video_Classi/data/checkpoints/lrcn-images.030-2.581.hdf5'
            validate(data_type, model, saved_model=saved_model,
                     image_shape=image_shape, class_limit=30)

    elif model in ['lstm', 'mlp']:
        data_type = 'features'
        image_shape = None

        if model == 'lstm':
            saved_model = '/data/d14122793/UCF101_Video_Classi/data/checkpoints/lstm-features.017-0.525.hdf5'
            validate(data_type, model, saved_model=saved_model,
                     image_shape=image_shape, class_limit=30)

        else:
            saved_model = '/data/d14122793/UCF101_Video_Classi/data/checkpoints/mlp-features.006-0.513.hdf5'
            validate(data_type, model, saved_model=saved_model,
                     image_shape=image_shape, class_limit=30)
    else:
        raise ValueError("Invalid model. Please choose one of them: conv_3d, c3d, lrcn, lstm, mlp.")


if __name__ == '__main__':
    main()
