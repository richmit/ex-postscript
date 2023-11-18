
# Create images for the web page documentation.

TARGITS = lorenz2.png lorenz1.png mandelbrot.png lorenz2_thm.png lorenz1_thm.png mandelbrot_thm.png

all: $(TARGITS)

lorenz2.png : lorenz2.ps
	convert lorenz2.ps -rotate 270 -background white -alpha remove -alpha off lorenz2.png

lorenz2_thm.png : lorenz2.png
	convert lorenz2.png -resize 25% lorenz2_thm.png

lorenz1.png : lorenz1.ps
	convert lorenz1.ps -rotate 270 -background white -alpha remove -alpha off lorenz1.png

lorenz1_thm.png : lorenz1.png
	convert lorenz1.png -resize 25% lorenz1_thm.png

mandelbrot.png : mandelbrot.ps
	convert mandelbrot.ps -background black -alpha remove -alpha off mandelbrot.png

mandelbrot_thm.png : mandelbrot.png
	convert mandelbrot.png -resize 25% mandelbrot_thm.png

clean: 
	rm -f $(TARGITS)
