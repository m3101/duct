# Duct

(UnB - 08/12/2022)

## Português

### Instruções de Construção

Num ambiente Linux, tomando como premissa a suite de build normal GNU (gcc, g++, make), sem ter instalado as bibliotecas:

1- Instale os pacotes `flex` e `bison` (para o libpcap)
2- `make`

> Depois de construir o binário, podes apagar `/lib` para economizares espaço (o binário "standalone" funcionará).

Para o mesmo ambiente, mas com libpcap e libnet já instalados:

1- `make preinstalled`

## English

### Build Instructions

In a Linux environment, assuming the usual GNU build suite (gcc, g++, make), without having installed the required libraries:

1- Install `flex` and `bison` (for libpcap)
2- `make`

> After building the executable, you may remove `/lib` to save space (the "standalone" executable stands up to its name).

For the same environment, assuming libpcap and libnet are correctly installed:

1- `make preinstalled`
