import PropTypes from "prop-types";

export default function EducationBlock({ education }) {
  EducationBlock.propTypes = {
    education: PropTypes.object.isRequired,
  };

  return (
    <div className="flex flex-col px-8 py-4 bg-white/20 rounded-md">
      <div className="flex justify-between">
        <h2 className="text-emerald-300 text-xl font-bold overflow-ellipsis w-[70%]">
          {education.college}
        </h2>
        <p className="text-white text-xl overflow-ellipsis w-[30%] text-end">
          {education.score}
        </p>
      </div>
      <p>{education.duration}</p>
      <p className="font-bold text-emerald-400">{education.level}</p>
    </div>
  );
}
