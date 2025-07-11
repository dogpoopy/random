.class Lcom/netease/download/util/SpUtil$PreferenceUnit;
.super Ljava/lang/Object;
.source "SpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/util/SpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreferenceUnit"
.end annotation


# instance fields
.field public editor:Landroid/content/SharedPreferences$Editor;

.field public preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/download/util/SpUtil$PreferenceUnit;->preferences:Landroid/content/SharedPreferences;

    .line 133
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/download/util/SpUtil$PreferenceUnit;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method
