.class Lcom/netease/ntunisdk/SdkNeteaseQrCode$4;
.super Ljava/lang/Object;
.source "SdkNeteaseQrCode.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnCodeScannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNeteaseQrCode;->openScanner(Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$sdkData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseQrCode;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$4;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$4;->val$sdkData:Ljava/util/Map;

    iput-object p3, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$4;->val$extra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public codeScannerFinish(ILjava/lang/String;)V
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unisdkQrCodeScanner, code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkNeteaseQrCode"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    .line 466
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$4;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$4;->val$sdkData:Ljava/util/Map;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$4;->val$extra:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$700(Lcom/netease/ntunisdk/SdkNeteaseQrCode;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$4;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    invoke-static {v0, p1, p2}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$800(Lcom/netease/ntunisdk/SdkNeteaseQrCode;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
