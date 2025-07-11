.class public Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;
.super Ljava/lang/Object;
.source "SkinFactory2.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field private final constructClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final constructorHashMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pluginKey:Ljava/lang/String;

.field private final typeViews:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;->constructorHashMap:Ljava/util/WeakHashMap;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 23
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;->constructClasses:[Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.widget."

    aput-object v2, v1, v3

    const-string v2, "android.webkit."

    aput-object v2, v1, v4

    const-string v2, "android.app."

    aput-object v2, v1, v0

    .line 25
    iput-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;->typeViews:[Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;->pluginKey:Ljava/lang/String;

    return-void
.end method

.method private createViewFormTag(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5

    const/16 v0, 0x2e

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;->createViewFromReflect(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;->typeViews:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v0, v1, v3

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;->createViewFromReflect(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private createViewFromReflect(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 86
    invoke-direct {p0, p2, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;->getReflectViewConstructor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getReflectViewConstructor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;->constructorHashMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 105
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;->constructClasses:[Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 106
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;->constructorHashMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 54
    invoke-direct {p0, p2, p3, p4}, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;->createViewFormTag(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 56
    invoke-direct {p0, p2, p3, p4}, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;->createViewFromReflect(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    .line 58
    :cond_0
    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;->pluginKey:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->fixTextSelectHandleBug(Landroid/view/View;Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;->pluginKey:Ljava/lang/String;

    invoke-static {p1, p4, p2}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->dynamicText(Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
