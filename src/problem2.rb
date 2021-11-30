#FizzBuzz用のメソッドを作る
def Fizz_buzz(num)
    return "FizzBuzz!" if num%3==0 && num%5==0
    return "Fizz!" if num % 3 == 0
    return "Buzz!" if num % 5 == 0
    num
end

#プログラム実行時、ARGVという配列に変数を格納
#配列に格納された、文字列をint型に変換し、numberという変数に代入する
number = ARGV[0].to_i

#numberに到達するまでiが1ずつ増加され続けFizzBuzzメソッドをループ実行
#numberが1から100の数字の時にFIzzBuzz実行　それ以外の時は標準出力でプログラムを終了させる
if number >= 1 && number <= 100
    1.upto(number) do |i|
        puts Fizz_buzz(i)
    end
else
    puts "1から100の数字を入力してください"
end


