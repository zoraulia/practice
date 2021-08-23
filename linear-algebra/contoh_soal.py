from ipywidgets import widgets, Layout, Box, GridspecLayout

##Basic mcq
def create_multipleChoice_widget(description, options, correct_answer, hint):
    if correct_answer not in options:
        options.append(correct_answer)
    
    correct_answer_index = options.index(correct_answer)
    
    radio_options = [(words, i) for i, words in enumerate(options)]
    alternativ = widgets.RadioButtons(
        options = radio_options,
        description = '',
        disabled = False,
        indent = False,
        align = 'center',
    )
    
    description_out = widgets.Output(layout=Layout(width='auto'))
    
    with description_out:
        print(description)
        
    feedback_out = widgets.Output()

    def check_selection(b):
        a = int(alternativ.value)
        if a==correct_answer_index:
            s = '\x1b[6;30;42m' + " jawaban benar " + '\x1b[0m' +"\n"
        else:
            s = '\x1b[5;30;41m' + " jawaban belum tepat " + '\x1b[0m' +"\n"
        with feedback_out:
            feedback_out.clear_output()
            print(s)
        return
    
    check = widgets.Button(description="check")
    check.on_click(check_selection)
    
    hint_out = widgets.Output()
    
    def hint_selection(b):
        with hint_out:
            print(hint)
            
        with feedback_out:
            feedback_out.clear_output()
            print(hint)
    
    hintbutton = widgets.Button(description="hint")
    hintbutton.on_click(hint_selection)
    
    return widgets.VBox([description_out, 
                         alternativ, 
                         widgets.HBox([hintbutton, check]), feedback_out], 
                        layout=Layout(display='flex',
                                     flex_flow='column',
                                     align_items='stretch',
                                     width='auto')) 

# soal
test1 = create_multipleChoice_widget('2. Apakah {u1, u2, u3} adalah sebuah basis?',
                                   ['ya', 'tidak'],
                                   'ya',
                                   '[hint]: buktikan u1, u2, u3 saling linear independen')

test2 = create_multipleChoice_widget('3. Apakah u3 dapat disebut kombinasi linear dari u1 dan u2? (lakukan tanpa berhitung)',
                                   ['ya', 'tidak'],
                                   'tidak',
                                   '[hint]: ingat pengertian basis')

test3 = create_multipleChoice_widget('4. Apakah vektor (9, 5, 2) dapat dihitung dari kombinasi linear u1, u2, dan u3? (lakukan tanpa berhitung)',
                                   ['ya', 'tidak'],
                                   'ya',
                                   '[hint]: ingat pengertian basis')