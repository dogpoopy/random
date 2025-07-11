.class Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$a;
.super Ljava/lang/Object;
.source "DMMLoginActivity.java"

# interfaces
.implements Lcom/dmm/android/sdk/olgid/DmmConfigureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$a;->b:Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/dmm/android/sdk/olgid/DmmOlgId;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$a;->b:Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;

    const-string v0, "login cancel"

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;->a(Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$a;->b:Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;->getErrorKind()Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "login failed"

    :goto_0
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;->a(Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$a;->b:Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;

    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$a;->a:Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;->a(Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;Landroid/content/Intent;)V

    return-void
.end method
