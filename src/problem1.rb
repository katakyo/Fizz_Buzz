#プログラム実行時、ARGVという配列に変数を格納
#配列に格納された、文字列をint型に変換し、numberという変数に代入する
number = ARGV[0].to_i

#numberが1から100の数字の時にFIzzBuzz実行　それ以外の時は標準出力でプログラムを終了させる
if number >= 1 && number <= 100
    # FIzzBuzz実行部分　1からnumberの数だけfor文を実行  
    for i in 1..number
        if i%3==0 && i%5==0
            puts "FizzBuzz!"
        elsif i%3==0
            puts "Fizz!"
        elsif i%5==0 
            puts "Buzz!"
        else
            puts i
        end

    end
else
    puts "1から100の数字を入力してください"
end

