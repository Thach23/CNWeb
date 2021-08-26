using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DA_WebDienThoai.Models;
namespace DA_WebDienThoai.Controllers
{
    public class DienThoaiController : Controller
    {
        //
        // GET: /DienThoai/
        DataClasses1DataContext data = new DataClasses1DataContext();
        public ActionResult Index()
        {

                List<nhasanxuat> nsx = data.nhasanxuats.ToList();
                ViewBag.sanpham = data.sanphams.ToList();
                return View(nsx);
            

        }

        public ActionResult Index2(int id)
        {
            List<sanpham> sp = data.sanphams.Where(s => s.sp_nsx == id).ToList();
            ViewBag.nhasanxuat = data.nhasanxuats.ToList();
            return View(sp);
        }

        public ActionResult CTDienThoai(int id)
        {
            

            sanpham sp = data.sanphams.SingleOrDefault(s => s.sp_ma == id);

                    ViewBag.SPcungloai = data.sanphams.Where(s => s.sp_nsx == sp.sp_nsx).Take(4).ToList();

            return View(sp);
        }
	}
}