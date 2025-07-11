.class final Lcom/netease/ntunisdk/FloatingButtonUtil$1;
.super Ljava/lang/Object;
.source "FloatingButtonUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/FloatingButtonUtil;->reqPermission(Landroid/app/Activity;Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 120
    invoke-static {}, Lcom/netease/ntunisdk/FloatingButtonUtil;->access$000()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "state"

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    invoke-static {}, Lcom/netease/ntunisdk/FloatingButtonUtil;->access$100()Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    invoke-static {}, Lcom/netease/ntunisdk/FloatingButtonUtil;->access$100()Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;->done()V

    :cond_0
    return-void
.end method
