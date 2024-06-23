import pytest
from src.gpu_cuda_aes.v2.AES import CryptoGPU

def test_mount_instance():
    global gpu
    gpu = CryptoGPU()

def test_hide_key():
    global gpu
    gpu.hide_key("000102030405060708090a0b0c0d0e0f")

def test_encrypt_sensible():
    global gpu
    global text_encripted
    text_encripted = gpu.encrypt("Hola este es un mensaje de testeo")
    print(text_encripted)

    assert isinstance(text_encripted, str)

def test_encrypt_aes():
    global gpu
    global text_encripted
    text_encripted = gpu.encrypt("Hola este es un mensaje de testeo")
    print(text_encripted)

    assert isinstance(text_encripted, str)

def test_double_encryption():
    pass

def test_decypt():
    global gpu
    global text_encripted
    text_decripted = gpu.decrypt(text_encripted)
    print(text_decripted)

    assert isinstance(text_decripted, str)