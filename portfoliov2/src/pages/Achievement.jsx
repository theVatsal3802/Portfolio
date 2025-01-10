import AchievementBlock from "../components/AchievementBlock";
import { data } from "../data";

export default function Achievement() {
  return (
    <div className="flex flex-col mb-8" id="achievements">
      <h2 className="text-4xl md:text-7xl font-bold mb-16 text-emerald-300 mx-auto text-center">
        Achievements
      </h2>
      <ul className="flex flex-col">
        {data.achievement.map((item, index) => {
          return (
            <li
              key={index}
              className={`flex ${
                index % 2 === 0 ? "justify-start" : "justify-end"
              }`}
            >
              <AchievementBlock achievement={item} />
            </li>
          );
        })}
      </ul>
    </div>
  );
}
