#!/bin/sh
DOCKER_IMAGE=$1
DOCKER_RUN="docker run --rm -i -v $(pwd):/local -w /local ${DOCKER_IMAGE}"

CMD="pyret -qk hello_world.arr"
RESULT="$(${DOCKER_RUN} sh -c "${CMD}")"
rm -f hello_world.jarr
echo "${RESULT}"
if [ "${RESULT}" = "Hello, world!" ]
then
    echo "PASSED"
else
    echo "FAILED"
    exit 1
fi
