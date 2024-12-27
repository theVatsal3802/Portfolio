import AboutSectionRowOne from "../components/AboutSectionRowOne";
import AboutSectionRowTwo from "../components/AboutSectionRowTwo";
import PercentageBar from "../components/PercentageBar";

import { data } from "../data";

export default function About() {
  return (
    <>
      <section id="about" className="text-white p-8">
        <h2 className="text-4xl md:text-7xl font-bold mb-8 text-center mx-auto">
          About <span className="text-emerald-300">Me</span>
        </h2>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          <AboutSectionRowOne
            title={data.abstract.first.title}
            text={data.abstract.first.text}
          >
            <div className="rounded-lg p-4 mb-4 border border-white/20">
              <code className="text-emerald-200/50">
                const generalInformation = [
                <br />
                &nbsp;&nbsp;{`"${data.abstract.first.children.dob}"`}
                <br />
                &nbsp;&nbsp;{`"${data.abstract.first.children.location}"`}
                <br />
                ];
              </code>
            </div>
          </AboutSectionRowOne>

          <AboutSectionRowOne
            title={data.abstract.second.title}
            text={data.abstract.second.text}
            src={data.abstract.second.src}
            alt={data.abstract.second.alt}
          />

          <AboutSectionRowOne
            title={data.abstract.third.title}
            text={data.abstract.third.text}
            src={data.abstract.third.src}
            alt={data.abstract.third.alt}
          />
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-8 mt-8">
          <AboutSectionRowTwo title={data.rowTwo.first.title}>
            {data.education.map((degree, index) => (
              <PercentageBar
                key={index}
                label={degree.college}
                percentage={degree.percentage}
                score={degree.score}
                level={degree.level}
                duration={degree.duration}
              />
            ))}
          </AboutSectionRowTwo>

          <AboutSectionRowTwo title={data.rowTwo.second.title}>
            <ul className="list-disc">
              {data.achievement.map((achievementName, index) => (
                <div key={index}>
                  <li>{achievementName}</li>
                  <br />
                </div>
              ))}
            </ul>
            <div className="relative rounded-lg p-4 h-[300px] overflow-hidden">
              <img
                src={data.achievementImg}
                alt={data.rowTwo.second.title}
                className="absolute inset-0 w-full h-full object-contain"
              />
            </div>
          </AboutSectionRowTwo>
        </div>
      </section>
    </>
  );
}
