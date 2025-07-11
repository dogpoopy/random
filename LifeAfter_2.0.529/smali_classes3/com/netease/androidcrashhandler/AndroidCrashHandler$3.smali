.class Lcom/netease/androidcrashhandler/AndroidCrashHandler$3;
.super Ljava/lang/Object;
.source "AndroidCrashHandler.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/AndroidCrashHandler;->startCrashHandle(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/AndroidCrashHandler;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/AndroidCrashHandler;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler$3;->this$0:Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public crashCallBack(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "trace"

    const-string v0, "AndroidCrashHandler [startCrashHandle] [JavaCrashCallBack] \u901a\u8fc7\u65e7\u65b9\u5f0f\u8f6c\u63a5\uff0cjava\u5d29\u6e83\u56de\u8c03"

    .line 354
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler$3;->this$0:Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    invoke-static {p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->access$300(Lcom/netease/androidcrashhandler/AndroidCrashHandler;)Lcom/netease/androidcrashhandler/MyCrashCallBack;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 357
    iget-object p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler$3;->this$0:Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    invoke-static {p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->access$300(Lcom/netease/androidcrashhandler/AndroidCrashHandler;)Lcom/netease/androidcrashhandler/MyCrashCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/androidcrashhandler/MyCrashCallBack;->crashCallBack()V

    :cond_0
    return-void
.end method
