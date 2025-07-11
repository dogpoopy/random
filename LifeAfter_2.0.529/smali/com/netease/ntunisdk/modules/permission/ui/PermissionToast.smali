.class public Lcom/netease/ntunisdk/modules/permission/ui/PermissionToast;
.super Ljava/lang/Object;
.source "PermissionToast.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionToast"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    const-string v0, "PermissionToast"

    const-string v1, "show: start"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/netease/ntunisdk/modules/permission/R$layout;->netease_permissionkit_sdk__toast_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 24
    sget v2, Lcom/netease/ntunisdk/modules/permission/R$id;->netease_permissionkit_sdk__toast_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 25
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    new-instance p1, Landroid/widget/Toast;

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    const/16 v2, 0x11

    .line 27
    invoke-virtual {p1, v2, p0, p0}, Landroid/widget/Toast;->setGravity(III)V

    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 29
    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 30
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p0, "show: success"

    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
