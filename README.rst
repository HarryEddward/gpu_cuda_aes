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
**Encypt/Decypt with your Nvidia GPU with AES!**
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

    text_encrypted = gpu.encypt('plain_text')
    text_decrypted = gpu.decrypt('encripted_text')


.. image:: https://pypi-camo.freetls.fastly.net/36f397b09a7781d43d862d849361e2e6ae718ca6/68747470733a2f2f7365637572652e67726176617461722e636f6d2f6176617461722f39663431306239623365363937333832303965366131343163636137623339653f73697a653d313430
   :alt: Gravatar
   :width: 120px
   :height: 120px

Créditos
---------

.. role:: separators

Links:
* :instagram: https://www.instagram.com/__adrian__martin__
* :pypi: https://pypi.org/user/AdriaMartin/
* :profile: https://gravatar.com/au7812ooae32
* :github: https://github.com/HarryEddward/to_literal

Rolos:
* **Desarrollador frontend**
* **Desarrollador backend**
* **Desarrollador devops**
* **Instalador**
* **Configurador**