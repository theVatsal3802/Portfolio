import AboutSectionRowOne from "../components/AboutSectionRowOne";
import { data } from "../data";

export default function About() {
  return (
    <>
      <section id="about" className="text-white p-8">
        <h2 className="text-4xl md:text-7xl font-bold mb-8 text-center mx-auto">
          About <span className="text-emerald-300">Me</span>
        </h2>
        <AboutSectionRowOne text={data.abstract.first.text}>
          <div className="rounded-lg p-4 mb-4 border border-white/20 w-fit mx-auto">
            <code className="text-emerald-300 text-xl">
              const generalInformation = [
              <br />
              &nbsp;&nbsp;{`"${data.abstract.first.children.dob}"`}
              <br />
              &nbsp;&nbsp;{`"${data.abstract.first.children.location}"`}
              <br />
              &nbsp;&nbsp;{`"${data.abstract.first.children.education}"`}
              <br />
              ];
            </code>
          </div>
        </AboutSectionRowOne>
      </section>
    </>
  );
}
