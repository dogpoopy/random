.class public Lcom/netease/ntunisdk/shortcuts/ShortcutRouteActivity;
.super Landroid/app/Activity;
.source "ShortcutRouteActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QR quickqr_route"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutRouteActivity;->getTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QR quickqr_route"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/shortcuts/ShortcutRouteActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1, p1}, Lcom/netease/ntunisdk/shortcuts/ShortcutRouteActivity;->overridePendingTransition(II)V

    .line 20
    invoke-virtual {p0}, Lcom/netease/ntunisdk/shortcuts/ShortcutRouteActivity;->finish()V

    return-void
.end method
