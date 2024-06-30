import SwiftUI

struct MacroView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20) {
                Text("Macro-History")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top, 20)
                
                ForEach(sampleMacroEntries, id: \.id) { entry in
                    VStack(alignment: .leading, spacing: 8) {
                        Text(entry.date)
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        HStack(spacing: 20) {
                            MacroItemView(imageName: "kcal", title: "Calories", value: entry.calories)
                            MacroItemView(imageName: "carb", title: "Carbs", value: entry.carbs)
                            MacroItemView(imageName: "protein", title: "Protein", value: entry.protein)
                            MacroItemView(imageName: "fat", title: "Fat", value: entry.fat)
                        }
                        .padding(.top, 8)
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray.opacity(0.1))
                    )
                }
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 20)
        }
    }
}

struct MacroItemView: View {
    var imageName: String
    var title: String
    var value: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
            Text(title)
                .foregroundColor(.black)
                .font(.headline)
                .padding(.top, 4)
            Text(value)
        }
    }
}

struct MacroEntry {
    var id = UUID()
    var date: String
    var calories: String
    var carbs: String
    var protein: String
    var fat: String
}

let sampleMacroEntries: [MacroEntry] = [
    MacroEntry(date: "2024/03/19", calories: "300", carbs: "50g", protein: "50g", fat: "50g"),
    MacroEntry(date: "2024/03/18", calories: "250", carbs: "40g", protein: "45g", fat: "40g"),
    MacroEntry(date: "2024/03/17", calories: "280", carbs: "45g", protein: "48g", fat: "48g"),
    MacroEntry(date: "2024/03/16", calories: "320", carbs: "55g", protein: "55g", fat: "55g"),
    MacroEntry(date: "2024/03/15", calories: "290", carbs: "48g", protein: "52g", fat: "52g"),
    MacroEntry(date: "2024/03/14", calories: "310", carbs: "52g", protein: "53g", fat: "53g"),
    MacroEntry(date: "2024/03/13", calories: "280", carbs: "47g", protein: "50g", fat: "50g"),
    MacroEntry(date: "2024/03/12", calories: "300", carbs: "50g", protein: "50g", fat: "50g"),
    MacroEntry(date: "2024/03/11", calories: "270", carbs: "45g", protein: "48g", fat: "48g"),
    MacroEntry(date: "2024/03/10", calories: "290", carbs: "48g", protein: "52g", fat: "52g"),
]

struct MacroView_Previews: PreviewProvider {
    static var previews: some View {
        MacroView()
    }
}
