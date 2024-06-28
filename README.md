# dan
# git document 
# các lệnh để commit code lên trên git 

# clone project về máy sử dụng: git clone (link project)

# git add (thư mục code thay đổi) -> git commit -m "nội dung code mới thay đổi" -> git push : commit code lên git 

# lệnh để cập nhật nhánh git ở local( trên thiết bị máy ) với origin( git trên mạng hay là github): ví dụ A đẩy code mới lên nhưng B chưa có code mới ở local thì sử dụng lệnh 
# git pull  


# Để cập nhật nhánh mới tạo của các người khác khi sử dụng chung 1 project mà local chưa có: git fetch

# Để chuyển nhánh này sang nhánh khác: git checkout <tên nhánh>

# Để merge nhánh này với nhánh khác sử dụng lệnh: git merge tên nhánh < nếu merge ở local thì tên nhánh là feature/20240628_checkgit>, nêu merge nhánh ở trên github thì tên nhánh thêm origin vào đầu origin/feature/20240628_checkgit

# Để revert code về tag hoặc commit trước đó sử dụng git revert tuy nhiên để làm nhánh thì sử dụng git checkout về mã tag 
# Mã tag lấy ở gitGraph sau đó lấy mã commit ở commit change trước đó 
# ví dụ git checkout  bebe79689c1b34e320ea3221ce97d832904feeae nằm trong Commit: bebe79689c1b34e320ea3221ce97d832904feeae
# Parents: d93c6115d26cd1c2b7d5183b5440b60e0f2a5176
# Author: danpham04 <phamdan2804@gmail.com>
# Committer: danpham04 <phamdan2804@gmail.com>
# Date: Fri Jun 28 2024 11:32:07 GMT+0700 (Indochina Time)


# Ý nghĩa của từng nhánh 
# quản lý
# Master: Là nhánh khi code mới nhất đã được ra chợ và chạy ổn định

# quản lý 
# Tag version: Là những version code đã chạy và test pilot và đưa cho người dùng sử dụng < có thể tạo nhiều tag version>
# được tạo từ nhánh release sau khi đã test pilot thành công

# quản lý
# Nhánh release: là nhánh được tạo từ develop sau khi đã test uat và tiến hiền build để test pilot 
# Nhánh develop là nhánh quản lý và tổng hợp code lúc phát triển các tính năng 

# dev quèn
# Nhánh feature/ là nhánh sinh ra để quản lý code của những tính năng mong muốn phát triển. Mỗi 1 tính năng là 1 nhánh, nhánh này khi được tạo thì bắt buộc phải tạo từ develop( lí do vì develop là nhánh chưa tất cả các tính năng đã phát triển hoàn thiện)


# Nguyên tắc khi tạo ra 1 nhánh git mới để code tính năng mới ( tạo ra nhánh feature):
# Nhánh luôn được tạo từ nhánh develop: 
# Sau khi code 1 tính năng hay 1 màn hình hay bất cứ cái gì đã chạy thành công thì commit code lên để tránh mất code 
