import PropTypes from "prop-types";
import { data } from "../data";

export default function AchievementBlock({ achievement }) {
  AchievementBlock.propTypes = {
    achievement: PropTypes.object.isRequired,
  };

  return (
    <div className="flex flex-col md:w-[70%] px-8 py-4 my-4 bg-white/10 rounded-md items-start justify-evenly">
      <img className="w-[64px]" src={data.achievementImg} alt="Trophy Image" />
      <p className="text-white text-xl">{achievement.title}</p>
    </div>
  );
}
