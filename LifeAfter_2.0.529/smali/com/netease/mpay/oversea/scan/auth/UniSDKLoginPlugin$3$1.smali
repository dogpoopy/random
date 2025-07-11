.class Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3$1;
.super Ljava/lang/Object;
.source "UniSDKLoginPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3;->finishInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3$1;->this$1:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3$1;->this$1:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3;

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$3;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$800(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V

    return-void
.end method
