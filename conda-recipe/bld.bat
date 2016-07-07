python -m pip install --upgrade pip wheel setuptools
python -m pip install -i https://pypi.anaconda.org/carlkl/simple mingwpy
python -m pip install cython docutils pygments pypiwin32 kivy.deps.sdl2 kivy.deps.glew kivy.deps.gstreamer kivy.deps.glew_dev kivy.deps.sdl2_dev kivy.deps.gstreamer_dev --extra-index-url https://kivy.org/downloads/packages/simple/
echo [build] >> setup.cfg
echo compiler=mingw32 >> setup.cfg
type setup.cfg
set USE_SDL2=1
set USE_GSTREAMER=1
python -m pip install .
if errorlevel 1 exit 1

:: Add more build steps here, if they are necessary.

:: See
:: http://docs.continuum.io/conda/build.html
:: for a list of environment variables that are set during the build process.
