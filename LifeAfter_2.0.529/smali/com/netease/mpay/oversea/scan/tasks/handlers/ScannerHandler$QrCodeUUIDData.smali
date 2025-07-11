.class Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$QrCodeUUIDData;
.super Ljava/lang/Object;
.source "ScannerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QrCodeUUIDData"
.end annotation


# instance fields
.field scanUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$QrCodeUUIDData;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$QrCodeUUIDData;->scanUrl:Ljava/lang/String;

    return-void
.end method
