import About from "./pages/About";
import Achievement from "./pages/Achievement";
import Education from "./pages/Education";
import Experience from "./pages/Experience";
import Footer from "./pages/Footer";
import Hero from "./pages/Hero";
import Navbar from "./pages/Navbar";
import Projects from "./pages/Projects";
import Skills from "./pages/Skills";

export default function App() {
  return (
    <>
      <Navbar />
      <Hero />
      <div className="w-[72%] items-center mx-auto">
        <About />
        <Education />
        <Experience />
        <Projects />
        <Skills />
        <Achievement />
        <Footer />
      </div>
    </>
  );
}
