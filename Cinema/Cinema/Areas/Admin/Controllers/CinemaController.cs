using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Cinema.Models;
namespace Cinema.Areas.Admin.Controllers
{
    public class CinemaController : Controller
    {
        // GET: Cinema
        public ActionResult Index()
        {
            QuanLyRapPhimDataContext QuanlyCinema = new QuanLyRapPhimDataContext();
            List<The_Loai> dsTheloai = QuanlyCinema.The_Loais.ToList();
            return View(dsTheloai);
        }
        public ActionResult IndexPhim()
        {
            QuanLyRapPhimDataContext QuanlyCinema = new QuanLyRapPhimDataContext();
            List<Phim> dsphim = QuanlyCinema.Phims.ToList();
            return View(dsphim);
        }
        public ActionResult Create()
        {
            if (Request.Form.Count > 0)
            {
                QuanLyRapPhimDataContext QuanlyCinema = new QuanLyRapPhimDataContext();
                Phim p = new Phim();
                p.Maphim = int.Parse(Request.Form["Maphim"]);
                p.Tenphim = Request.Form["TenPhim"];
                p.Mota = Request.Form["Mota"];
                p.Thoiluong = Request.Form["Thoiluong"];
                p.Ngaykhoichieu = Convert.ToDateTime(Request.Form["Ngaykhoichieu"]);
                p.Daodien = Request.Form["Daodien"];
                p.Namsx = int.Parse(Request.Form["Namsx"]);
                p.Matheloai = Request.Form["Matheloai"];
                p.Theloai = Request.Form["Theloai"];
                HttpPostedFileBase file = Request.Files["Apphich"];
                if (file != null)
                {
                    var tenFile = Path.GetFileName(file.FileName);
                    var path = Path.Combine(Server.MapPath("~/Content/img"), tenFile);
                    file.SaveAs(path);
                    p.Apphich = file.FileName;
                }
                QuanlyCinema.Phims.InsertOnSubmit(p);
                QuanlyCinema.SubmitChanges();
                return RedirectToAction("Index");
            }
            return View();

        }
        public ActionResult Edit(int MA)
        {
            QuanLyRapPhimDataContext QuanlyCinema = new QuanLyRapPhimDataContext();
            Phim p = QuanlyCinema.Phims.FirstOrDefault(x => x.Maphim == MA);
            if (Request.Form.Count == 0)
            {
                return View(p);
            }
            p.Maphim = int.Parse(Request.Form["Maphim"]);
            p.Tenphim = Request.Form["TenPhim"];
            p.Mota = Request.Form["Mota"];
            p.Thoiluong = Request.Form["Thoiluong"];
            p.Ngaykhoichieu = Convert.ToDateTime(Request.Form["Ngaykhoichieu"]);
            p.Daodien = Request.Form["Daodien"];
            p.Namsx = int.Parse(Request.Form["Namsx"]);
            p.Matheloai = Request.Form["Matheloai"];
            p.Theloai = Request.Form["Theloai"];
            HttpPostedFileBase file = Request.Files["Apphich"];
            if (file != null)
            {
                var tenFile = Path.GetFileName(file.FileName);
                var path = Path.Combine(Server.MapPath("~/Content/img"), tenFile);
                file.SaveAs(path);
                p.Apphich = file.FileName;
            }
            QuanlyCinema.SubmitChanges();
            return RedirectToAction("IndexPhim");
        }
        public ActionResult IndexKhachHang()
        {
            QuanLyRapPhimDataContext QuanlyCinema = new QuanLyRapPhimDataContext();
            List<Khach_Hang> dskhachhang = QuanlyCinema.Khach_Hangs.ToList();
            return View(dskhachhang);
        }
        public ActionResult CreateKhachHang()
        {
            if (Request.Form.Count > 0)
            {
                QuanLyRapPhimDataContext QuanlyCinema = new QuanLyRapPhimDataContext();
                Khach_Hang kh = new Khach_Hang();
                kh.MaKH = Request.Form["MaKh"];
                kh.Hoten = Request.Form["Hoten"];
                kh.Email = Request.Form["email"];
                kh.CMND = int.Parse(Request.Form["CMND"]);
                kh.SDT = int.Parse(Request.Form["SDT"]);
                kh.Ngaysinh = Convert.ToDateTime(Request.Form["Ngaysinh"]);
                kh.Diachi = Request.Form["Diachi"];
                kh.Diemtichluy = int.Parse(Request.Form["Diemtichluy"]);
                QuanlyCinema.Khach_Hangs.InsertOnSubmit(kh);
                QuanlyCinema.SubmitChanges();
                return RedirectToAction("IndexKhachHang");

            }
            return View();
        }
        public ActionResult IndexVE()
        {
            QuanLyRapPhimDataContext QuanlyCinema = new QuanLyRapPhimDataContext();
            List<VE> dsve = QuanlyCinema.VEs.ToList();
            return View(dsve);
        }
        public ActionResult CreateVE()
        {

            if (Request.Form.Count > 0)
            {
                QuanLyRapPhimDataContext QuanlyCinema = new QuanLyRapPhimDataContext();
                VE v = new VE();
                v.Mave = Request.Form["Mave"];
                v.MaKH = Request.Form["Makh"];
                v.Maphim = int.Parse(Request.Form["Maphim"]);
                v.MaLC = Request.Form["MaLC"];
                v.Maghe = Request.Form["Maghe"];
                v.Maphong = Request.Form["MaPhong"];
                v.Tenphim = Request.Form["Tenphim"];
                v.Thoigianchieu = Convert.ToDateTime(Request.Form["Thoigianchieu"]);
                v.Ngaychieu = Convert.ToDateTime(Request.Form["Ngaychieu"]);
                v.Phongso = int.Parse(Request.Form["Phongso"]);
                v.Gheso = Request.Form["Gheso"];
                v.Thoiluong = Request.Form["Thoiluong"];
                QuanlyCinema.VEs.InsertOnSubmit(v);
                QuanlyCinema.SubmitChanges();
                return RedirectToAction("IndexVE");
            }
            return View();
        }
        public ActionResult DangKy()
        {
            if (Request.Form.Count > 0)
            {
                QuanLyRapPhimDataContext context = new QuanLyRapPhimDataContext();
                Accout t = new Accout();
                t.TaiKhoan = Request.Form["TaiKhoan"];
                t.Matkhau = Request.Form["Matkhau"];
                context.Accouts.InsertOnSubmit(t);
                context.SubmitChanges();
                return RedirectToAction("Index");
            }

            return View();
        }

        public ActionResult DangNhap()
        {
            if (Request.Form.Count > 0)
            {
                QuanLyRapPhimDataContext context = new QuanLyRapPhimDataContext();
                Accout t = new Accout();
                t.TaiKhoan = Request.Form["TaiKhoan"];
                t.Matkhau = Request.Form["Matkhau"];
                var check = context.Accouts.Where(a => a.TaiKhoan.Equals(t.TaiKhoan) && a.Matkhau.Equals(t.Matkhau) && a.LoaiTK == 1).FirstOrDefault();
                var v = context.Accouts.Where(a => a.TaiKhoan.Equals(t.TaiKhoan) && a.Matkhau.Equals(t.Matkhau)).FirstOrDefault();
                if (v != null && check == null)
                {
                    return RedirectToAction("Index");
                }
                else if (v != null && check != null)
                {
                    return Redirect("~/Admin/Cinema/IndexPhim");
                }
            }
            return View();
        }
        public ActionResult DetailsPhim(int MA)
        {
            QuanLyRapPhimDataContext context = new QuanLyRapPhimDataContext();
            Phim c = context.Phims.FirstOrDefault(x => x.Maphim == MA);
            return View(c);
        }
    }

}
 


