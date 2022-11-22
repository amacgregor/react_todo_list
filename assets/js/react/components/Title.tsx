import React from "react";

interface TitleInterface {
    title: string;
    subtitle: string;
  }
  
  export function Title({ title, subtitle }: TitleInterface) {
    return (
      <div className="mb-11">
        <h1 className="text-center font-display text-4xl tracking-tighter text-app-800 antialiased sm:text-left">
          {title}
        </h1>
        <h2 className="font-base mt-2 text-center text-sm text-app-500 antialiased sm:text-left">
          {subtitle}
        </h2>
      </div>
    );
  }
  