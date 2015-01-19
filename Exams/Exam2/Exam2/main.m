//
//  main.m
//  examm2
//
//  Created by Craig Dazey on 1/19/15.
//  Copyright (c) 2015 class. All rights reserved.
//
//  I made a new method in the Library class to print out the authors when they're in a set.

#import <Foundation/Foundation.h>
#import "LibraryItem.h"
#import "Library.h"
#import "Journal.h"
#import "Book.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        // ------------------- PART 1 -------------------
        //        LibraryItem * item1 = [[LibraryItem alloc] init];
        //        [item1 setItemValues:
        //         @"Zen and the Art of Motorcycle Maintenance"
        //                            :@"Morrow" :1974];
        //        LibraryItem * item2 = [[LibraryItem alloc] init];
        //        [item2 setItemValues:
        //         @"Harry Potter and the Philosopher's Stone"
        //                            :@"Bloomsbury Publishing" :1997];
        //        LibraryItem * item3 = [[LibraryItem alloc] init];
        //        [item3 setItemValues: @"Unbreakable"
        //                            :@"HarperCollinsPublishers" :2013];
        //
        //        NSMutableDictionary* dictionary = @{ @"Pirsig, Robert" : item1, @"Rowling, J.K" : item2, @"Norris, Elizabeth" : item3 };
        //        [myLibrary setLibraryCollection: dictionary];
        //        [myLibrary printLibraryCollection];
        
        // ------------------- PART 2 & 3 -------------------
        //        Library* myLibrary = [[Library alloc]init];
        //        NSMutableDictionary* myDict = [[NSMutableDictionary alloc]init];
        //        [myLibrary setLibraryCollection:myDict];
        //        FILE* fp = fopen("/Users/class/Desktop/data1.txt", "r" );
        //        char authorstr[40], titleStr[80], publisherStr[80], dateStr[10], itemType[20];
        //        for (int i =0; i<8; i++)
        //        {
        //            fgets(itemType, 20, fp); strtok(itemType, "\n");
        //            fgets(authorstr, 40, fp); strtok(authorstr, "\n");
        //            fgets(titleStr, 80, fp); strtok(titleStr, "\n");
        //            fgets(publisherStr, 80, fp); strtok(publisherStr, "\n");
        //            fgets(dateStr, 10, fp); strtok(dateStr, "\n");
        //
        //            NSString *type =
        //            [NSString stringWithCString:itemType encoding:NSASCIIStringEncoding];
        //            if ([type isEqualToString:@"Book"]) {
        //                char numPagesStr[10], editorStr[20];
        //                fgets(editorStr, 20, fp); strtok(editorStr, "\n");
        //                fgets(numPagesStr, 10, fp); strtok(numPagesStr, "\n");
        //
        //                NSString *author =
        //                [NSString stringWithCString:authorstr encoding:NSASCIIStringEncoding];
        //                NSString *title =
        //                [NSString stringWithCString:titleStr encoding:NSASCIIStringEncoding];
        //                NSString *publisher =
        //                [NSString stringWithCString:publisherStr encoding:NSASCIIStringEncoding];
        //                int date = atoi(dateStr);
        //                NSString *editor =
        //                [NSString stringWithCString:editorStr encoding:NSASCIIStringEncoding];
        //                int numPages = atoi(numPagesStr);
        //
        //                Book* item = [[Book alloc] init];
        //                [item setItemValues:title :publisher :date];
        //                [item setEditor: editor];
        //                [item setNumberOfPages:numPages];
        //                [[myLibrary LibraryCollection] setObject: item forKey: author];
        //            }
        //
        //            else if ([type isEqualToString:@"Journal"]) {
        //                char journalNameStr[50], volumeStr[5], numberStr[5];
        //                fgets(journalNameStr, 50, fp); strtok(journalNameStr, "\n");
        //                fgets(volumeStr, 5, fp); strtok(volumeStr, "\n");
        //                fgets(numberStr, 5, fp); strtok(numberStr, "\n");
        //
        //                NSString *author =
        //                [NSString stringWithCString:authorstr encoding:NSASCIIStringEncoding];
        //                NSString *title =
        //                [NSString stringWithCString:titleStr encoding:NSASCIIStringEncoding];
        //                NSString *publisher =
        //                [NSString stringWithCString:publisherStr encoding:NSASCIIStringEncoding];
        //                int date = atoi(dateStr);
        //                NSString *journalName =
        //                [NSString stringWithCString:journalNameStr encoding:NSASCIIStringEncoding];
        //                int volume = atoi(volumeStr);
        //                int number = atoi(numberStr);
        //
        //                Journal* item = [[Journal alloc] init];
        //                [item setItemValues:title :publisher :date];
        //                [item setJournalName:journalName];
        //                [item setVolume:volume];
        //                [item setNumber:number];
        //                [[myLibrary LibraryCollection] setObject: item forKey: author];
        //            }
        //
        //        }
        //        [myLibrary printLibraryCollection];
        
        // ------------------- PART 4 -------------------
        Library* myLibrary = [[Library alloc]init];
        NSMutableDictionary* myDict = [[NSMutableDictionary alloc]init];
        [myLibrary setLibraryCollection:myDict];
        FILE* fp = fopen("/Users/class/Desktop/data2.txt", "r" );
        char numAuthorsStr[5], authorstr[40], titleStr[80], publisherStr[80], dateStr[10], itemType[20];
        for (int i =0; i<8; i++)
        {
            fgets(itemType, 20, fp); strtok(itemType, "\n");
            NSString *type =
            [NSString stringWithCString:itemType encoding:NSASCIIStringEncoding];
            if ([type isEqualToString:@"Book"]) {
                char numPagesStr[10], editorStr[20];
                
                NSMutableSet* authorNames = [[NSMutableSet alloc]init];
                
                fgets(numAuthorsStr, 5, fp); strtok(numAuthorsStr, "\n");
                int numAuthors = atoi(numAuthorsStr);
                for(int j = 0; j < numAuthors; j++) {
                    fgets(authorstr, 40, fp); strtok(authorstr, "\n");
                    NSString *author =
                    [NSString stringWithCString:authorstr encoding:NSASCIIStringEncoding];
                    [authorNames addObject: author];
                }
                
                fgets(titleStr, 80, fp); strtok(titleStr, "\n");
                fgets(publisherStr, 80, fp); strtok(publisherStr, "\n");
                fgets(dateStr, 10, fp); strtok(dateStr, "\n");
                fgets(editorStr, 20, fp); strtok(editorStr, "\n");
                fgets(numPagesStr, 10, fp); strtok(numPagesStr, "\n");
                
                NSString *title =
                [NSString stringWithCString:titleStr encoding:NSASCIIStringEncoding];
                NSString *publisher =
                [NSString stringWithCString:publisherStr encoding:NSASCIIStringEncoding];
                int date = atoi(dateStr);
                NSString *editor =
                [NSString stringWithCString:editorStr encoding:NSASCIIStringEncoding];
                int numPages = atoi(numPagesStr);
                
                Book* item = [[Book alloc] init];
                [item setItemValues:title :publisher :date];
                [item setEditor: editor];
                [item setNumberOfPages:numPages];
                [[myLibrary LibraryCollection] setObject: item forKey: authorNames];
            }
            
            else if ([type isEqualToString:@"Journal"]) {
                char journalNameStr[50], volumeStr[5], numberStr[5];
                
                NSMutableSet* authorNames = [[NSMutableSet alloc]init];
                
                fgets(numAuthorsStr, 5, fp); strtok(numAuthorsStr, "\n");
                int numAuthors = atoi(numAuthorsStr);
                for(int j = 0; j < numAuthors; j++) {
                    fgets(authorstr, 40, fp); strtok(authorstr, "\n");
                    NSString *author =
                    [NSString stringWithCString:authorstr encoding:NSASCIIStringEncoding];
                    [authorNames addObject: author];
                }
                
                fgets(titleStr, 80, fp); strtok(titleStr, "\n");
                fgets(publisherStr, 80, fp); strtok(publisherStr, "\n");
                fgets(dateStr, 10, fp); strtok(dateStr, "\n");
                fgets(journalNameStr, 50, fp); strtok(journalNameStr, "\n");
                fgets(volumeStr, 5, fp); strtok(volumeStr, "\n");
                fgets(numberStr, 5, fp); strtok(numberStr, "\n");
                
                NSString *title =
                [NSString stringWithCString:titleStr encoding:NSASCIIStringEncoding];
                NSString *publisher =
                [NSString stringWithCString:publisherStr encoding:NSASCIIStringEncoding];
                int date = atoi(dateStr);
                NSString *journalName =
                [NSString stringWithCString:journalNameStr encoding:NSASCIIStringEncoding];
                int volume = atoi(volumeStr);
                int number = atoi(numberStr);
                
                Journal* item = [[Journal alloc] init];
                [item setItemValues:title :publisher :date];
                [item setJournalName:journalName];
                [item setVolume:volume];
                [item setNumber:number];
                [[myLibrary LibraryCollection] setObject: item forKey: authorNames];
            }
            
        }
        [myLibrary printLibraryCollectionWhereKeyIsSet];
        
        
    }
    return 0;
}

