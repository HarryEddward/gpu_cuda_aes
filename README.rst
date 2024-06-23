GPU_CUDA_AES
============
 *Avoid writing extra code, just use it*
============


.. raw:: html

   <div align="center">

.. image:: assets/logotipo.png
   :width: 400px
   :height: 400px
   :align: center

==============================
**Encypt/Decypt** :code:`High Performant` **with your Nvidia GPU with AES!**
==============================

`Explore in the documentation » <https://peluqueriamael.com/docs>`_

`Report bug <https://github.com/HarryEddward/gpu_cuda_aes/issues>`_ · `Request feature <https://github.com/twbs/bootstrap/issues/new?assignees=&labels=feature&template=feature_request.yml>`_ · `Themes <https://themes.getbootstrap.com/>`_

.. image:: https://img.shields.io/pypi/dm/to_literal
  :alt: PyPI - Downloads

.. image:: https://badges.gitter.im/Join%20Chat.svg
  :alt: Gitter

.. raw:: html

   </div>
   <br>
   <br>


**Forget to implement in the hard way other code to encrypt with this lib. Avoid to do an implementations to your code!**

========

These are the authors of the code made with CUDA and AES part: :code:`(github: aranscha) Alexander Ranschaert` :code:`(github: RyanDeKoninck) RyanDeKoninck`

I have a lot of respect for the people who made all this possible, go support them


It can't get any simpler, impossible!
============

.. code:: python

    from gpu_cuda_aes.v2.AES import CryptoGPU

    gpu = CryptoGPU()
    gpu.hide_key("secret_key")

    text_encrypted = gpu.encypt.aes('plain_text') #Cryptography (AES (GPU))
    text_encrypted_sensible = gpu.encypt.sensible('plain_text') #Cryptography (HSA256x2 (CPU) + AES (GPU))

    text_decrypted = gpu.decrypt('encripted_text')


Who is this python library made for?
====================================

- Dedicated small-medium web servers to scale
- Fast implementation/High gpu performance in Python encryption
- Technological Startups

encypt. :code:`sensible()`
===========
When you encrypt with the .sensible() method you are encrypted with SHA256 x2 and then it is encrypted with AES-128-CBC, when you decrypt it you will have the result of the previous SHA256 without spending processing because SHA is not decrypted, AES is! **Remember that SHA256 encrypts by CPU and AES by GPU CUDA**


encypt. :code:`aes()`
======
Standard function when using the library when encrypting, it is fast and secure enough for transmissions with not so delicate data.


.hide_key()
===========
The secret encryption key is added as a parameter, the function will verify its use and add it to the environment variable.
In production environments it will simply be when configuring the library, add the os variable **EASY_CRYPTO_CUDA_GPU_CRYPTO_GPU**. Avoiding non-verbose code in production and development.



Créditos
========

.. raw:: html

    <p align="center">
      <a href="https://gravatar.com/au7812ooae32">
      <img width="120px" height="120px" src="https://pypi-camo.freetls.fastly.net/36f397b09a7781d43d862d849361e2e6ae718ca6/68747470733a2f2f7365637572652e67726176617461722e636f6d2f6176617461722f39663431306239623365363937333832303965366131343163636137623339653f73697a653d313430">
      </a>
    </p>
    <p align="center">
      <a href="https://www.instagram.com/__adrian__martin__/"><b>Instagram</b></a> ·
      <a href="https://pypi.org/user/AdriaMartin/"><b>PyPi</b></a> ·
      <a href="https://gravatar.com/au7812ooae32"><b>Profile</b></a> ·
      <a href="https://github.com/HarryEddward/to_literal"><b>Github</b></a>
    </p>
    <p align="center">
      <span><b>Desarrollador frontend</b></span> -
      <span><b>Desarrollador backend</b></span> -
      <span><b>Desarrollador devops</b></span> -
      <span><b>Instalador</b></span> -
      <span><b>Configurador</b></span>
    </p>
