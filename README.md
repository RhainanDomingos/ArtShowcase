# Art Showcase

Art Showcase is an iOS app developed during a course at [BackFront Academy](https://backfront.academy) using **Swift** — primarily with **UIKit** and **ViewCode**.  
It follows the **MVVM architectural pattern** and best development practices.  

The goal of this project is to build a fully functional application that demonstrates key Swift concepts such as **UITableView**, **UICollectionView**, API integration with **Alamofire**, and more — all aimed at learning how to create a real-world iOS app.

---

## Features

- Displays a curated list of art pieces using **UITableView**
- Shows artwork details with custom layouts via **UICollectionView**
- Fetches data from a public API using **Alamofire**
- Built entirely with **UIKit** and **ViewCode** (no Storyboards)
- Applies the **MVVM (Model-View-ViewModel)** architecture pattern
- Organized and modular code structure for scalability and readability

---

## Technologies Used

- **Swift** — Main programming language
- **UIKit** — UI framework for building the app interface
- **ViewCode** — UI created entirely in code (no Storyboards)
- **MVVM** — Architectural pattern to separate concerns
- **Alamofire** — For handling HTTP networking and API consumption
- **Xcode** — Official IDE used for development

---

### What I Learned

This project helped me understand how to work with the MVVM pattern, how to use Alamofire to consume APIs, and how to handle asynchronous data with UIKit.

One challenge was setting up the collection view layout correctly and managing dynamic image loading — it taught me a lot about organizing views efficiently.

---

## How to Run

To run this project on your local machine:

**Clone the repository**
```bash
git clone https://github.com/RhainanDomingos/ArtShowcase.git
cd ArtShowcase
```
Install dependencies using CocoaPods
```bash
pod install
```
Open the .xcworkspace file
```bash
open ArtShowcase.xcworkspace
```
Build and run the app
Select a simulator (e.g., iPhone 14)
Press Cmd + R in Xcode


Requirements

macOS with Xcode 14.0 or later
iOS 15.0 or later
CocoaPods installed
sudo gem install cocoapods
Roadmap

 Integrate with public art API
 Display artwork list and details
 Implement MVVM architecture
 Add search functionality
 Add favorite artworks feature
 Improve error handling and loading states

 
Preview


 <div align="center">
  <img src="https://github.com/user-attachments/assets/dc11e80b-4aad-49cf-8f85-99273a75286c" width="250" />
  <img src="https://github.com/user-attachments/assets/187d1b8e-9cc6-4a9b-8018-e2f0189ff28d" width="250" />
  <img src="https://github.com/user-attachments/assets/30a313f1-b359-440c-b589-238601d45fc8" width="250" />
  <br/>
  <img src="https://github.com/user-attachments/assets/28f62785-9b9c-47fd-8d46-1094f1109387" width="250" />
  <img src="https://github.com/user-attachments/assets/8408a00f-1717-4249-827c-69b86b2a6cbf" width="250" />
  <img src="https://github.com/user-attachments/assets/20354635-8535-49ee-8db4-39940e3e4dda" width="250" />
</div>

---

## Notes

> **Warning**  
> This project uses an internal mock to simulate API data.  
> Depending on the code version or updates in Xcode, it might be necessary to adjust or recreate the mock data to make the app run properly.  
> If you encounter any errors when running the project, check the mock-related files and ensure they are properly configured.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
