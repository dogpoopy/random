.class final Lcom/netease/ntunisdk/core/others/CustomClickListener$1;
.super Lcom/netease/ntunisdk/core/others/OnUnShiveringClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/core/others/CustomClickListener;->setUnShivering(J)Lcom/netease/ntunisdk/core/others/CustomClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/core/others/CustomClickListener;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/core/others/CustomClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener$1;->a:Lcom/netease/ntunisdk/core/others/CustomClickListener;

    invoke-direct {p0}, Lcom/netease/ntunisdk/core/others/OnUnShiveringClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onUnShiveringClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener$1;->a:Lcom/netease/ntunisdk/core/others/CustomClickListener;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/core/others/CustomClickListener;->a(Lcom/netease/ntunisdk/core/others/CustomClickListener;Landroid/view/View;)V

    const-string p1, "CustomClickListener setUnShivering() is checked!"

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    return-void
.end method
