
build: components bootstrap-reset.css
	@component build --dev

bootstrap-reset.css: bootstrap-reset.less
	node_modules/.bin/recess bootstrap-reset.less --compile > bootstrap-reset.css

components: component.json
	@component install --dev

clean:
	rm -fr build components

.PHONY: clean
