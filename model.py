from vortex.runtime.helper import InferenceHelper
import numpy as np
import matplotlib.pyplot as plt
import cv2
from PIL import Image

size = (480,640)

def test_image(filename, as_numpy=True):
    img = Image.open(filename)

    if as_numpy:
        img = np.array(img)
        img = np.expand_dims(img,0)
    return img

def inference(input_path, filename='model/aquanet.onnx'):

    # prepare test image, as NHWC with BGR channel order
    img = test_image(input_path)
    img = np.flip(img,-1)
    img = cv2.resize(img[0],size[::-1])[None,...]

    # construct runtime model with visualization
    kwargs = dict(
        model_path=filename,
        runtime='cpu',
    )
    rt = InferenceHelper.create_runtime_model(**kwargs)

    # prepare arguments for inference,
    # note that the name 'score_threshold'
    # will be forwarded to the actual runtime model
    # hence the name should match the actual model itself.
    kwargs = dict(
        score_threshold=0.3,
        visualize=True,
    )
    result = rt(img,**kwargs)
    print(result['prediction'])

    if 'visualization' in result:
        # visualize first batch
        visual = result['visualization'][0]
        visual = np.flip(visual,2)
        print(visual)
        # cv2.imwrite('results/predictions.jpg', visual)
        result = Image.fromarray((visual).astype(np.uint8), mode='RGB')
        result.save('results/predictions.jpg')
        # plt.imshow(visual)
        # plt.show()

# inference('test_images/shark.jpeg')