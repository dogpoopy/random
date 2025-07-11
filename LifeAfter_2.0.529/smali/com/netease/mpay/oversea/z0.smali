.class public abstract Lcom/netease/mpay/oversea/z0;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/h5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/h5<",
        "Lcom/netease/mpay/oversea/v8;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Landroid/app/Activity;

.field protected c:Lcom/netease/mpay/oversea/ui/i;

.field protected d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field protected e:Lcom/netease/mpay/oversea/b1;

.field protected f:Lcom/netease/mpay/oversea/v2;

.field protected g:Lcom/netease/mpay/oversea/w2;

.field protected h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/netease/mpay/oversea/m7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mpay/oversea/m7<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected j:Lcom/netease/mpay/oversea/s4;

.field protected k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/z0;->k:Z

    return-void
.end method

.method public static a(Landroidx/fragment/app/FragmentActivity;Lcom/netease/mpay/oversea/b1;Ljava/lang/String;Lcom/netease/mpay/oversea/m7;)Lcom/netease/mpay/oversea/z0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/netease/mpay/oversea/b1;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/m7<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/netease/mpay/oversea/z0;"
        }
    .end annotation

    .line 5
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/z0;

    .line 7
    iget-object v0, p2, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    iput-object p0, p2, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    .line 9
    iput-object p3, p2, Lcom/netease/mpay/oversea/z0;->i:Lcom/netease/mpay/oversea/m7;

    .line 10
    new-instance p3, Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;)V

    iput-object p3, p2, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    .line 11
    iput-object p1, p2, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    .line 12
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/netease/mpay/oversea/z0;->a:Ljava/lang/String;

    .line 13
    iget-object p1, p2, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/netease/mpay/oversea/z2;->c(Landroid/app/Activity;)Lcom/netease/mpay/oversea/z2;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/z2;->a(Lcom/netease/mpay/oversea/h5;)Lcom/netease/mpay/oversea/s4;

    move-result-object p1

    iput-object p1, p2, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    .line 15
    invoke-static {p0}, Lcom/netease/mpay/oversea/bc;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-nez v1, :cond_1

    return-void

    .line 45
    :cond_1
    invoke-static {v1, p1}, Lcom/netease/mpay/oversea/ec;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ec;->b(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public a(Lcom/netease/mpay/oversea/w2;)Lcom/netease/mpay/oversea/z0;
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/w2;->a()Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 23
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/w2;->b()Lcom/netease/mpay/oversea/v2;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    .line 24
    iput-object p1, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->i:Lcom/netease/mpay/oversea/m7;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/m7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/ViewGroup;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__privacy:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 48
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->f()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__login_privacy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->x()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/i9;->h0()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    :try_start_0
    new-instance v1, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;

    new-instance v2, Lcom/netease/mpay/oversea/z0$c;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/z0$c;-><init>(Lcom/netease/mpay/oversea/z0;)V

    invoke-direct {v1, p1, v2}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;-><init>(Landroid/widget/TextView;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;)V

    .line 94
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser;->parseNtSdkTags(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    .line 95
    invoke-static {v3}, Lcom/netease/mpay/oversea/widget/b;->b(Landroid/app/Activity;)Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnColorReplacement;

    move-result-object v3

    .line 96
    invoke-static {v2, v3, v1}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser;->setNtSdkStrings2TextView(Ljava/util/List;Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnColorReplacement;Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x8

    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final a(Lcom/netease/mpay/oversea/j;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    iget v0, p1, Lcom/netease/mpay/oversea/j;->a:I

    const/16 v1, 0x2715

    if-ne v1, v0, :cond_1

    .line 40
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/z0;->b(Lcom/netease/mpay/oversea/j;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/z0;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Runnable;Lcom/netease/mpay/oversea/s9;)V
    .locals 0

    .line 25
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;Lcom/netease/mpay/oversea/y5;)V
    .locals 8

    .line 26
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i9;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v1, p2, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ac;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    new-instance v1, Lcom/netease/mpay/oversea/q6;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object p2, p2, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-direct {v1, v2, p2, v0}, Lcom/netease/mpay/oversea/q6;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 30
    invoke-static {p2, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/z0$a;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/oversea/z0$a;-><init>(Lcom/netease/mpay/oversea/z0;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    .line 37
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/oversea/z0$b;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/z0$b;-><init>(Lcom/netease/mpay/oversea/z0;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 38
    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/oversea/q6;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Z)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->i:Lcom/netease/mpay/oversea/m7;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/m7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/v8;Lcom/netease/mpay/oversea/x2;)Z
    .locals 1

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive[Client]\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/x2;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/x2;)Z
    .locals 0

    .line 4
    check-cast p1, Lcom/netease/mpay/oversea/v8;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/z0;->a(Lcom/netease/mpay/oversea/v8;Lcom/netease/mpay/oversea/x2;)Z

    move-result p1

    return p1
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/z0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    :cond_0
    move-object v0, p1

    :catchall_1
    :goto_0
    return-object v0
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/z0;->a(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 13
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/z0;->k:Z

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/netease/mpay/oversea/s4;->b()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/z0;->k:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/z0;->k:Z

    return-void
.end method
