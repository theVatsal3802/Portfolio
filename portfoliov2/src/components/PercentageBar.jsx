import PropTypes from "prop-types";

export default function PercentageBar({
  label,
  percentage,
  score,
  level,
  duration,
}) {
  PercentageBar.propTypes = {
    label: PropTypes.string.isRequired,
    percentage: PropTypes.string.isRequired,
    score: PropTypes.string.isRequired,
    level: PropTypes.string.isRequired,
    duration: PropTypes.string.isRequired,
  };

  return (
    <div className="p-2">
      <div className="flex flex-row justify-between">
        <p className="block text-sm font-bold mb-1 text-emerald-500">{label}</p>
        <p className="block text-sm font-medium mb-1 text-white">{score}</p>
      </div>
      <div className="w-full bg-white/10 rounded-full h-2">
        <div
          className="bg-emerald-300 h-2 rounded-full"
          style={{ width: percentage }}
        ></div>
      </div>
      <p className="block text-sm font-bold mb-1 text-white/50 pt-1">
        {`Duration: ${duration}`}
      </p>

      <p className="block text-sm font-medium mb-1 text-white/50">{level}</p>
    </div>
  );
}
