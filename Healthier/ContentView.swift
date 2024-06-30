import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white
            
            VStack {
                Text("Healthier")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    .padding(.bottom, 40)
                VStack {
                    Image("kcal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Text("Calories")
                        .foregroundColor(.black)
                        .font(.title2)
                        .padding(.top, 8)
                    Text("300")
                }
                .background (
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.gray.opacity(0.1))
                        .frame(width: 100, height: 140)
                    )
                
                HStack(spacing: 60) {
                    VStack {
                        Image("carb")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        Text("Carbs")
                            .foregroundColor(.black)
                            .font(.headline)
                            .padding(.top, 8)
                        Text("50g")
                    }
                    .background (
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.gray.opacity(0.1))
                            .frame(width: 100, height: 140)

                    )
                    VStack {
                        Image("protein")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        Text("Protein")
                            .foregroundColor(.black)
                            .font(.headline)
                            .padding(.top, 8)
                        Text("50g")

                    }
                    .background (
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.gray.opacity(0.1))
                            .frame(width: 100, height: 140)

                    )
                    VStack {
                        Image("fat")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        Text("Fat")
                            .foregroundColor(.black)
                            .font(.headline)
                            .padding(.top, 8)
                        Text("50g")

                    }
                    .background (
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.gray.opacity(0.1))
                            .frame(width: 100, height: 140)
                    )
                }
                .padding(.top, 50)
                
                VStack(spacing: 20) {
                    VStack {
                        Text("Macronutrients")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                    }
                    
                    VStack {
                        Text("Workout")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                    }
                }
                .padding(.vertical, 50)
                .padding(.bottom, 50)
            }
            .padding(.horizontal, 30)
        }
    }
}

#Preview {
    ContentView()
}
