.class Lcom/netease/ntunisdk/SdkGoogleX$7;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX;->queryMyAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/google/CallBack<",
        "Lcom/netease/ntunisdk/base/AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleX;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleX;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$7;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/netease/ntunisdk/base/AccountInfo;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$7;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->queryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V

    return-void
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;)V
    .locals 0

    .line 326
    check-cast p1, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX$7;->onFinish(Lcom/netease/ntunisdk/base/AccountInfo;)V

    return-void
.end method
