.class Lcom/netease/ntunisdk/SdkNeteaseQrCode$5;
.super Ljava/lang/Object;
.source "SdkNeteaseQrCode.java"

# interfaces
.implements Lcom/netease/mpay/oversea/scan/PayConfirmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNeteaseQrCode;->notifyOrderFinish(Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/OrderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseQrCode;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$5;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    const-string v0, "SdkNeteaseQrCode"

    const-string v1, "onFailure"

    .line 763
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "SdkNeteaseQrCode"

    const-string v1, "onSuccess"

    .line 758
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
