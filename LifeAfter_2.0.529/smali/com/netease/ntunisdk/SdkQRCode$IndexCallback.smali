.class Lcom/netease/ntunisdk/SdkQRCode$IndexCallback;
.super Ljava/lang/Object;
.source "SdkQRCode.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/HTTPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkQRCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexCallback"
.end annotation


# instance fields
.field private dataId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/ntunisdk/SdkQRCode;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkQRCode$IndexCallback;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    iput-object p2, p0, Lcom/netease/ntunisdk/SdkQRCode$IndexCallback;->dataId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public processResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 698
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkQRCode$IndexCallback;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode$IndexCallback;->dataId:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->access$1400(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
