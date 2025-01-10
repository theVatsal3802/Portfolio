import EducationBlock from "../components/EducationBlock";
import { data } from "../data";

export default function Education() {
  return (
    <div className="mb-8" id="education">
      <h2 className="text-4xl md:text-7xl font-bold mb-16 text-emerald-300 mx-auto text-center">
        Education
      </h2>
      <div className="grid grid-cols-1 md:grid-cols-2 gap-8 mx-auto">
        {data.education.map((item, index) => (
          <EducationBlock key={index} education={item} />
        ))}
      </div>
    </div>
  );
}
