.class Lcom/netease/ntunisdk/SdkNeteaseQrCode$WebOrderCheckListener;
.super Ljava/lang/Object;
.source "SdkNeteaseQrCode.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnOrderCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkNeteaseQrCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebOrderCheckListener"
.end annotation


# instance fields
.field private mSdkDataJson:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseQrCode;Lorg/json/JSONObject;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$WebOrderCheckListener;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$WebOrderCheckListener;->mSdkDataJson:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public orderCheckDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 2

    const-string v0, "SdkNeteaseQrCode"

    const-string v1, "WebOrderCheckListener"

    .line 656
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$WebOrderCheckListener;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$WebOrderCheckListener;->mSdkDataJson:Lorg/json/JSONObject;

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$900(Lcom/netease/ntunisdk/SdkNeteaseQrCode;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public orderConsumeDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method
