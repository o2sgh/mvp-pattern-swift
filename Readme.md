# MVP Pattern
MVP stands for Model View Presenter, which like MVVM, is a variant of the MVC pattern. MVP is similar to MVC, but instead of a Controller, there is a Presenter.
Like in the MVC Controller, the MVP Presenter holds a reference to the View. However, the dependency between the Presenter and the View is inverted.
In MVC, the Controller holds a reference to the Concrete View.

## Code Structure of MVP
```
.
├── AppDelegate.swift
├── Base.lproj
├── Fruit API
│   ├── FruitItemMapper.swift
│   ├── HTTPClient.swift
│   ├── RemoteFruitLoader.swift
│   └── URLSessionHTTPClient.swift
├── Fruit Feature
│   ├── Fruit.swift
│   ├── FruitLoader.swift
│   └── Nutrition.swift
├── Fruit Presentation
│   └── FruitPresenter.swift
├── Fruit UI
│   ├── Composers
│   │   ├── FruitLoaderPresentationAdapter.swift
│   │   ├── FruitUIComposer.swift
│   │   ├── FruitViewAdapter.swift
│   │   ├── MainQueueDispatchDecorator.swift
│   │   └── WeakRefVirtualProxy.swift
│   └── Views
│       ├── Controller
│       │   ├── Fruit.storyboard
│       │   ├── FruitCellController.swift
│       │   └── FruitViewController.swift
│       ├── FruitCell.swift
│       └── Helpers
│           └── UITableView+Dequeueing.swift
├── Info.plist
├── LaunchScreen.storyboard
├── Main.storyboard
├── SceneDelegate.swift
├── Shared
│   ├── FruitCellViewModel.swift
│   └── FruitViewModel.swift
```
1. Fruit API
	This section is for making network calls to server. `FruitItemMapper` maps the data to our models. `URLSessionHTTPClient` make network request using `URLSession`. `RemoteFruitLoader` call the `URLSessionHTTPClient` for getting the data.
2. Fruit Feature 
	This section contains the models for our application
3. Fruit Presentation
	This section contain the presenter part of `MVP` which is used to present the views.
4. Fruit UI
	- Composers
		Composer is used whole all the object into return `View Controller` to get ready for used.
		`MainQueueDispatchDecorator` is used to run the view on main thread.
	- Views
		Views contain conrtoller and all UI specific code. 