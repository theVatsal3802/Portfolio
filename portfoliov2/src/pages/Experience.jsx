import ExperienceBox from "../components/ExperienceBox";
import { data } from "../data";

export default function Experience() {
  return (
    <>
      <section id="experience" className="text-white p-8">
        <h2 className="text-4xl md:text-7xl font-bold mb-8 text-emerald-300 mx-auto text-center">
          Experience
        </h2>
        <div className="flex flex-col gap-8">
          {data.experience.map((position, index) => (
            <ExperienceBox
              key={index}
              title={position.name}
              position={position.position}
              desc={position.desc}
              certificate={position.certificate ?? null}
              duration={position.duration}
            />
          ))}
        </div>
      </section>
    </>
  );
}
