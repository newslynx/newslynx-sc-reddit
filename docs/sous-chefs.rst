
Sous Chefs
-------------
**newslynx-sc-reddit** provides access to the following Sous Chefs

Reddit Search Content Item Links to Event
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  Extracts linked events from a Reddit API query.
-  This Sous Chef runs the python module
   ``newslynx_sc_reddit.SearchContentItemLinks``.
-  API Slug: ``reddit-search-content-item-links-to-event``

Development
^^^^^^^^^^^

Pass runtime options to ``reddit-search-content-item-links-to-event``
and stream output. **NOTE** Will not execute the SousChef's ``load``
method.

.. code:: bash

    $ newslynx sc newslynx_sc_reddit/reddit_search_content_item_links_to_event.yaml option=value1

Alernatively pass in a recipe file

.. code:: bash

    $ newslynx sc newslynx_sc_reddit/reddit_search_content_item_links_to_event.yaml --recipe=recipe.yaml

API Usage
^^^^^^^^^

Add this Sous Chef to your authenticated org

.. code:: bash

    $ newslynx api sous-chefs create -d=newslynx_sc_reddit/reddit_search_content_item_links_to_event.yaml

Create a Recipe with this Sous Chef with command line options.

.. code:: bash

    $ newslynx api recipes create sous_chef=reddit-search-content-item-links-to-event **options

Alerternatively pass in a recipe file.

.. code:: bash

    $ newslynx api recipes create sous_chef=reddit-search-content-item-links-to-event --data=recipe.yaml

Save the outputted ``id`` of this recipe, and execute it via the API.
**NOTE** This will place the recipe in a task queue.

.. code:: bash

    $ newslynx api recipes cook id=<id>

Alernatively, run the Recipe, passing in arbitrary runtime options, and
stream it's output: **NOTE** Will not execute the SousChef's ``load``
method.

.. code:: bash

    $ newslynx api recipes cook id=<id> --passthrough **options

Options
^^^^^^^

In addition to default recipe options,
``reddit-search-content-item-links-to-event`` also accepts the following

-  ``must_link``

   -  **Required**
   -  Should be rendered with a ``checkbox-single`` form.
   -  Choose from:

      -  ``False``

   -  Accepts inputs of type:

      -  ``boolean``

   -  Defaults to ``False``

-  ``event_status``

   -  Should be rendered with a ``select`` form.
   -  Choose from:

      -  ``pending``
      -  ``approved``

   -  Accepts inputs of type:

      -  ``string``

   -  Defaults to ``pending``

-  ``set_event_title``

   -  Should be rendered with a ``text`` form.
   -  Accepts inputs of type:

      -  ``string``

   -  Defaults to ``None``

-  ``set_event_description``

   -  Should be rendered with a ``paragraph`` form.
   -  Accepts inputs of type:

      -  ``string``

   -  Defaults to ``None``

-  ``set_event_tag_ids``

   -  Should be rendered with a ``checkbox`` form.
   -  Choose from:

   -  Accepts inputs of type:

      -  ``string``
      -  ``numeric``

   -  Defaults to ``[]``

-  ``set_event_content_items``

   -  Should be rendered with a ``search`` form.
   -  Choose from:

   -  Accepts inputs of type:

      -  ``json``

   -  Defaults to ``[]``



Reddit Search to Event
~~~~~~~~~~~~~~~~~~~~~~

-  Extracts events from a Reddit API query.
-  This Sous Chef runs the python module ``newslynx_sc_reddit.Search``.
-  API Slug: ``reddit-search-to-event``

Development
^^^^^^^^^^^

Pass runtime options to ``reddit-search-to-event`` and stream output.
**NOTE** Will not execute the SousChef's ``load`` method.

.. code:: bash

    $ newslynx sc newslynx_sc_reddit/reddit_search_to_event.yaml option=value1

Alernatively pass in a recipe file

.. code:: bash

    $ newslynx sc newslynx_sc_reddit/reddit_search_to_event.yaml --recipe=recipe.yaml

API Usage
^^^^^^^^^

Add this Sous Chef to your authenticated org

.. code:: bash

    $ newslynx api sous-chefs create -d=newslynx_sc_reddit/reddit_search_to_event.yaml

Create a Recipe with this Sous Chef with command line options.

.. code:: bash

    $ newslynx api recipes create sous_chef=reddit-search-to-event **options

Alerternatively pass in a recipe file.

.. code:: bash

    $ newslynx api recipes create sous_chef=reddit-search-to-event --data=recipe.yaml

Save the outputted ``id`` of this recipe, and execute it via the API.
**NOTE** This will place the recipe in a task queue.

.. code:: bash

    $ newslynx api recipes cook id=<id>

Alernatively, run the Recipe, passing in arbitrary runtime options, and
stream it's output: **NOTE** Will not execute the SousChef's ``load``
method.

.. code:: bash

    $ newslynx api recipes cook id=<id> --passthrough **options

Options
^^^^^^^

In addition to default recipe options, ``reddit-search-to-event`` also
accepts the following

-  ``query``

   -  **Required**
   -  Should be rendered with a ``text`` form.
   -  Accepts inputs of type:

      -  ``string``

   -  More details on this option can be found
      `here <https://www.reddit.com/wiki/search>`__

-  ``sort``

   -  **Required**
   -  Should be rendered with a ``select`` form.
   -  Choose from:

      -  ``new``

   -  Accepts inputs of type:

      -  ``string``

   -  Defaults to ``new``

   -  More details on this option can be found
      `here <https://www.reddit.com/wiki/search>`__

-  ``subreddit``

   -  **Required**
   -  Should be rendered with a ``text`` form.
   -  Accepts inputs of type:

      -  ``string``

   -  Defaults to ``None``

-  ``must_link``

   -  **Required**
   -  Should be rendered with a ``checkbox-single`` form.
   -  Choose from:

      -  ``False``

   -  Accepts inputs of type:

      -  ``boolean``

   -  Defaults to ``False``

-  ``event_status``

   -  Should be rendered with a ``select`` form.
   -  Choose from:

      -  ``pending``
      -  ``approved``

   -  Accepts inputs of type:

      -  ``string``

   -  Defaults to ``pending``

-  ``set_event_title``

   -  Should be rendered with a ``text`` form.
   -  Accepts inputs of type:

      -  ``string``

   -  Defaults to ``None``

-  ``set_event_description``

   -  Should be rendered with a ``paragraph`` form.
   -  Accepts inputs of type:

      -  ``string``

   -  Defaults to ``None``

-  ``set_event_tag_ids``

   -  Should be rendered with a ``checkbox`` form.
   -  Choose from:

   -  Accepts inputs of type:

      -  ``string``
      -  ``numeric``

   -  Defaults to ``[]``

-  ``set_event_content_items``

   -  Should be rendered with a ``search`` form.
   -  Choose from:

   -  Accepts inputs of type:

      -  ``json``

   -  Defaults to ``[]``



