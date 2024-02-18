//
//  ToDoRepository.swift
//  SeSAC_HW_Reminders
//
//  Created by 박지은 on 2/16/24.
//

import Foundation
import RealmSwift

class ToDoRepository {
    
    // open a realm
    let realm = try! Realm()
    
    // "C"RUD
    func createRecord(_ data: ReminderModel) {
        do {
            try realm.write {
                realm.add(data)
                print(realm.configuration.fileURL)
            }
        } catch {
            print(error)
        }
    }
    
    // C"R"UD
    // false: 할일 못한 거
    func readRecordAllFilter() -> Results<ReminderModel> {
        return realm.objects(ReminderModel.self).where {
            $0.complete == false
        }
        // ascending: 내림차순, 올림차순 정렬
    }
    
    // true: 할일 완료한거!
    func readRecordCompletedFilter() -> Results<ReminderModel> {
        return realm.objects(ReminderModel.self).where {
            $0.complete == true
        }
    }
    
    // 날짜 입력안했을 경우 + 완료 못한 일 
    func todayScheduleFilter() -> Results<ReminderModel> {
        return realm.objects(ReminderModel.self).where {
            $0.date == "" && $0.complete == false
        }
    }
    
    func updateComplete(_ item: ReminderModel) {
        do {
            try realm.write {
                item.complete.toggle()
            }
        } catch {
            print(error)
        }
    }    
    
    // CRU"D"
    func deleteRecord(_ item: ReminderModel) {
        
        do {
            try realm.write {
                realm.delete(item)
            }
        } catch {
            print(error)
        }
    }
}
