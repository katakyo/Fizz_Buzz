#プログラム実行時、ARGVという配列に変数を格納
#配列に格納された、文字列をint型に変換し、numberという変数に代入する
number = ARGV[0].to_i

#整数クラスにFizz_buzzおよび任意の引数割った時余りが0か判定するメソッドを追加
class Integer
    # Fizz_buzz処理部分(空の文字列を作成し、条件に当てはまれば、配列に文字を結合、当てはまれなければ)
    def Fizz_buzz
      # 空の文字列を作成
      num = ''
      # 以下任意の機能を実装する場合は、同様の記述で文字列とcalcの引数を変える
      num += 'Fizz' if self.calc(3)
      num += 'Buzz' if self.calc(5)
      num += 'Piyo' if self.calc(2)
      # 上記処理が行われなかった時オブジェクト（今回の場合だとi）を代入
      if num.empty? then
        num =  self.to_s
      # 上記処理が行われた時'!'を結合
      else 
        num += '!'
      end
    end

    #オブジェクトが整数クラスかつnで割り切れる時、Trueを返すメソッド(FizzBuzz判定で処理)
    def calc(n)
      n.kind_of?(Integer) && self % n == 0
    end
end

#numberに到達するまでiが1ずつ増加され続けFizzBuzzメソッドをループ実行
#numberが1から100の数字の時にFIzzBuzzメソッド実行　それ以外の時は標準出力でプログラムを終了させる
if number >= 1 && number <= 100
  1.upto(number) do |i| 
    puts i.Fizz_buzz
  end  
else
  puts "1から100の数字を入力してください"
end
    