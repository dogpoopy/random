.class Lcom/netease/ntunisdk/SdkGoogleX$9;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX;->requestEmailFromGoogleAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/google/CallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleX;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleX;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$9;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Ljava/lang/Object;)V
    .locals 0

    .line 373
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX$9;->onFinish(Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$9;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->access$100(Lcom/netease/ntunisdk/SdkGoogleX;Ljava/lang/String;)V

    return-void
.end method
