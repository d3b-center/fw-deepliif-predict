# DeepLIIF IHC prediction

Flywheel gear that implements [DeepLIIF](https://github.com/nadeemlab/DeepLIIF/tree/main) model inference for IHC images. See also https://deepliif.org/

### Dependencies:
- Python 3.8
- DeepLIIF

### Settings

Required inputs:
- image

Optional configuration:
- tile-size (default: 512)
- wsi (yes/no; default: true)
- region-size (for WSI; default: 20000)

### Model files

Most recent model downloaded on March 26, 2024. Latest model can be downloaded from: https://zenodo.org/records/4751737#.YKRTS0NKhH4

### Other info

Takes a few minutes to run on images around 4096 x 4096 pixels, for whole slide 19920 x 18706 (with 16 GB mem, 2GHz quad core). For best results, use an image with resolution of 10X or higher.

### References

https://www.nature.com/articles/s42256-022-00471-x.epdf?sharing_token=TfIQdFzqGrYolrSS_NyOJtRgN0jAjWel9jnR3ZoTv0P90KdmGq_lkIuepQpaAnx9M_HMX0dkqP8OF91EhA0P9AAsgUeGoCtaqab2DQMx50ft_LVCW8JvZUJ-qQxqZjpYLSzzUo00YLH8PJ-XBckUsuikhsZl8LQ1us1rXPrAWKE%3D
