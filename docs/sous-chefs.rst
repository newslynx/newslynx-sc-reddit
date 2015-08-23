
Sous Chefs
-------------
**newslynx-sc-reddit** provides access to the following Sous Chefs

RUNS newslynx_sc_reddit.SearchContentItemLinks
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

   -  Only create an event if there is a link to an existing content
      item.

   -  **Required**
   -  Should be rendered with a ``checkbox-single`` form.
   -  Choose from:

      -  ``False``

   -  Accepts inputs of type:

      -  ``boolean``

   -  Defaults to ``False``

-  ``event_status``

   -  Set the status of the resulting events. Choose from pending and
      approved. Defaults to pending.

   -  Should be rendered with a ``select`` form.
   -  Choose from:

      -  ``pending``
      -  ``approved``

   -  Accepts inputs of type:

      -  ``string``

   -  Defaults to ``pending``

-  ``set_event_title``

   -  Set's the title of the resulting events. This can be a python
      format string which has access to all of an event's top-level
      keys: IE: "Content from {authors} at {created}."

   -  Should be rendered with a ``text`` form.
   -  Accepts inputs of type:

      -  ``string``

   -  Defaults to ``None``

-  ``set_event_description``

   -  Set's the description of the output events. This can be a python
      format string which has access to all of an event's top-level
      keys: IE: "{title}."

   -  Should be rendered with a ``paragraph`` form.
   -  Accepts inputs of type:

      -  ``string``

   -  Defaults to ``None``

-  ``set_event_tag_ids``

   -  A list of Tag IDs or slugs to automatically apply to events
      created by this recipe.

   -  Should be rendered with a ``checkbox`` form.
   -  Choose from:

   -  Accepts inputs of type:

      -  ``string``
      -  ``numeric``

   -  Defaults to ``[]``

-  ``set_event_content_items``

   -  A list of Content Item IDs and Titles to automatically apply to
      events created by this Recipe.

   -  Should be rendered with a ``search`` form.
   -  Choose from:

   -  Accepts inputs of type:

      -  ``json``

   -  Defaults to ``[]``



RUNS newslynx_sc_reddit.Search
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

   -  The query to the Reddit API to return the initial batch of events.

   -  **Required**
   -  Should be rendered with a ``text`` form.
   -  Accepts inputs of type:

      -  ``string``

   -  More details on this option can be found
      `here <https://www.reddit.com/wiki/search>`__

-  ``sort``

   -  The sort order to return from the Reddit API.

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

   -  The name of the subreddit to filter results by.

   -  **Required**
   -  Should be rendered with a ``text`` form.
   -  Accepts inputs of type:

      -  ``string``

   -  Defaults to ``None``

-  ``must_link``

   -  Only create an event if there is a link to an existing content
      item.

   -  **Required**
   -  Should be rendered with a ``checkbox-single`` form.
   -  Choose from:

      -  ``False``

   -  Accepts inputs of type:

      -  ``boolean``

   -  Defaults to ``False``

-  ``event_status``

   -  Set the status of the resulting events. Choose from pending and
      approved. Defaults to pending.

   -  Should be rendered with a ``select`` form.
   -  Choose from:

      -  ``pending``
      -  ``approved``

   -  Accepts inputs of type:

      -  ``string``

   -  Defaults to ``pending``

-  ``set_event_title``

   -  Set's the title of the resulting events. This can be a python
      format string which has access to all of an event's top-level
      keys: IE: "Content from {authors} at {created}."

   -  Should be rendered with a ``text`` form.
   -  Accepts inputs of type:

      -  ``string``

   -  Defaults to ``None``

-  ``set_event_description``

   -  Set's the description of the output events. This can be a python
      format string which has access to all of an event's top-level
      keys: IE: "{title}."

   -  Should be rendered with a ``paragraph`` form.
   -  Accepts inputs of type:

      -  ``string``

   -  Defaults to ``None``

-  ``set_event_tag_ids``

   -  A list of Tag IDs or slugs to automatically apply to events
      created by this recipe.

   -  Should be rendered with a ``checkbox`` form.
   -  Choose from:

   -  Accepts inputs of type:

      -  ``string``
      -  ``numeric``

   -  Defaults to ``[]``

-  ``set_event_content_items``

   -  A list of Content Item IDs and Titles to automatically apply to
      events created by this Recipe.

   -  Should be rendered with a ``search`` form.
   -  Choose from:

   -  Accepts inputs of type:

      -  ``json``

   -  Defaults to ``[]``



