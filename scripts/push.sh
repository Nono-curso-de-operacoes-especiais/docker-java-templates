set -euo pipefail

IMAGE_NAME="$1"

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
IMAGE_DIR="${ROOT_DIR}/images/${IMAGE_NAME}"
IMAGE_ENV="${IMAGE_DIR}/image.env"

if [ ! -d "${IMAGE_DIR}" ]; then
  echo "[ERROR] Diretório da imagem não encontrado: ${IMAGE_DIR}"
  exit 1
fi

if [ -f "${ROOT_DIR}/.env" ]; then
  source "${ROOT_DIR}/.env"
fi

if [ -f "${IMAGE_ENV}" ]; then
  source "${IMAGE_ENV}"
fi

: "${DOCKER_REGISTRY:?DOCKER_REGISTRY não definido}"
: "${DOCKER_NAMESPACE:=local}"
: "${IMAGE_TAG:=${DEFAULT_TAG:-latest}}"

FULL_IMAGE_NAME="${DOCKER_REGISTRY}/${DOCKER_NAMESPACE}/${IMAGE_NAME}:${IMAGE_TAG}"

echo "[INFO] Push da imagem ${FULL_IMAGE_NAME}"
docker push "${FULL_IMAGE_NAME}"
