#!/usr/bin/env sh

USER="deploy"
datadir=/data

function debug {
  if [[ "${VERBOSE}" != "" ]]
  then
    echo "${1}"
  fi
}

if [[ "${PUID}" == "" ]]
then
  PUID=1000
fi

if [[ "${PGID}" == "" ]]
then
  PGID=${PUID}
fi

if [[ "${VERBOSE}" != "" ]]
then
  VERBOSE="-v"
fi

debug "creating group deploy with gid=${PGID}"
addgroup -g "${PGID}" deploy

debug "creating user deploy with uid=${PUID} and gid=${PGID}"
adduser -h "${datadir}" -G deploy -D -u "${PUID}" "${USER}"

chmod 770 "${datadir}"

# Start node-red
exec su -c "/usr/local/bin/node-red --userDir ${datadir} ${VERBOSE}" - deploy
