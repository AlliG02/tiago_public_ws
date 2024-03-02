#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/k21066336/tiago_public_ws/src/legacy/lasr_navigate_to_known_person"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/k21066336/tiago_public_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/k21066336/tiago_public_ws/install/lib/python3/dist-packages:/home/k21066336/tiago_public_ws/build/lasr_navigate_to_known_person/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/k21066336/tiago_public_ws/build/lasr_navigate_to_known_person" \
    "/usr/bin/python3" \
    "/home/k21066336/tiago_public_ws/src/legacy/lasr_navigate_to_known_person/setup.py" \
     \
    build --build-base "/home/k21066336/tiago_public_ws/build/lasr_navigate_to_known_person" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/k21066336/tiago_public_ws/install" --install-scripts="/home/k21066336/tiago_public_ws/install/bin"
