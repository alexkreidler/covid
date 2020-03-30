# Semantic Web Components

I wanted to build a system that could 

1. Create any UI imaginable
2. Handle any data imaginable

all of this dynamically based on one possibly changing Semantic Web data specification.

A few of my use cases were:
1. A better frontend or an alternative entire system to OpenRefine, an ETL-like system for preprocessing datasets, but also with the capability to handle graphs and documents
2. A Document Management System with really good search for PDFs, etc
3. A version of the above, but specialized for the government, which would scrape all documents from Govt sites and categorize them by agency and type, allowing for complex searches

To go along with this, I need a AI-assisted Linked Data scraping tool that would detect semantics from sites and suggest scrapers that one could manually modify.


Some key features throughout all these applications
1. Deals with entities of different types (tablular dataset, graph dataset, JSON document, PDF, WORD, plain text documents, docs with metadata, realworld objects like Agency, Department, Person, etc) and collections of such (lists of datasets, "folders" or groups of documents, list of Departments in an Agency)


I soon started thinking: what if there was a React framework that did this:
1. Allowed me to register a library of components, associating each one with a semantic web type that would get passed in as a `data` prop
2. Created a nice dashboard that allowed panes and tabs for viewing entities. The welcome page would list all the entity types, and when clicked on would show a list or collection of those entities.
3. Whenever a semantic entity was clicked on or needed to be rendered (as a popup, etc), React would look for components with that semantic type and render them appropriately

This would allow for a basic API to view and deal with any type of data.

Then the framework would have to deal with different possible operations on a given element, or modifying data.

I remembered finding a truly Hypermedia-based spec for JSON web APIs, Hydra.

It allows for hypermedia controls defining how to navigate an API.

Thus, this would allow for both generic components (e.g. a list could have a "mass edit" feature that pulls up an editor that gets applied to all list elements) and custom components (each component could have custom actions, like EDIT or BUY, that dynamically get rendered if available)

This would allow for basically any UI to be built to handle any sort of data, and it would all be built in one place: the Hydra definitions of the API, plus the individual components.

Some generic components would take info about the structure of data required.
```jsx
<List name="name" data={...}>
```

Some certain meta-components, like <Grid> would need to be able to handle virtually any data type. It should allow for selection of the properties to be displayed.
e.g. 
```jsx
<Grid rows={["name", "age", "dob", "address", "<another property name>"]} data={[... {... one data object with many possible properties ... } ...]}>
```