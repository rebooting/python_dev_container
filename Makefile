.PHONY: build restore

venv: 
	cd $$HOME && python3 -m venv venv
	
restore: venv
	. $$HOME/venv/bin/activate && pip install -r requirements.txt

capture-requirements:
	. $$HOME/venv/bin/activate && pip freeze > requirements.txt

test_sample:
	. $$HOME/venv/bin/activate && cd SampleLib && python -m unittest test.test_sample

build_sample:
	. $$HOME/venv/bin/activate && cd SampleLib && python -m build --wheel

install_sample:
	. $$HOME/venv/bin/activate && cd SampleLib && python -m pip install dist/*.whl