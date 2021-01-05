import CGLib

// MARK: - VariantBuilder Record

/// The `VariantBuilderProtocol` protocol exposes the methods and properties of an underlying `GVariantBuilder` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VariantBuilder`.
/// Alternatively, use `VariantBuilderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A utility type for constructing container-type `GVariant` instances.
/// 
/// This is an opaque structure and may only be accessed using the
/// following functions.
/// 
/// `GVariantBuilder` is not threadsafe in any way.  Do not attempt to
/// access it from more than one thread.
public protocol VariantBuilderProtocol {
        /// Untyped pointer to the underlying `GVariantBuilder` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVariantBuilder` instance.
    var variant_builder_ptr: UnsafeMutablePointer<GVariantBuilder>! { get }

}

/// The `VariantBuilderRef` type acts as a lightweight Swift reference to an underlying `GVariantBuilder` instance.
/// It exposes methods that can operate on this data type through `VariantBuilderProtocol` conformance.
/// Use `VariantBuilderRef` only as an `unowned` reference to an existing `GVariantBuilder` instance.
///
/// A utility type for constructing container-type `GVariant` instances.
/// 
/// This is an opaque structure and may only be accessed using the
/// following functions.
/// 
/// `GVariantBuilder` is not threadsafe in any way.  Do not attempt to
/// access it from more than one thread.
public struct VariantBuilderRef: VariantBuilderProtocol {
        /// Untyped pointer to the underlying `GVariantBuilder` instance.
    /// For type-safe access, use the generated, typed pointer `variant_builder_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VariantBuilderRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVariantBuilder>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVariantBuilder>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `VariantBuilderProtocol`
    @inlinable init<T: VariantBuilderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates and initialises a new `GVariantBuilder`.
    /// 
    /// You should call `g_variant_builder_unref()` on the return value when it
    /// is no longer needed.  The memory will not be automatically freed by
    /// any other call.
    /// 
    /// In most cases it is easier to place a `GVariantBuilder` directly on
    /// the stack of the calling function and initialise it with
    /// `g_variant_builder_init()`.
    @inlinable init<VariantTypeT: VariantTypeProtocol>( type: VariantTypeT) {
        let rv = g_variant_builder_new(type.variant_type_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `VariantBuilder` type acts as a reference-counted owner of an underlying `GVariantBuilder` instance.
/// It provides the methods that can operate on this data type through `VariantBuilderProtocol` conformance.
/// Use `VariantBuilder` as a strong reference or owner of a `GVariantBuilder` instance.
///
/// A utility type for constructing container-type `GVariant` instances.
/// 
/// This is an opaque structure and may only be accessed using the
/// following functions.
/// 
/// `GVariantBuilder` is not threadsafe in any way.  Do not attempt to
/// access it from more than one thread.
open class VariantBuilder: VariantBuilderProtocol {
        /// Untyped pointer to the underlying `GVariantBuilder` instance.
    /// For type-safe access, use the generated, typed pointer `variant_builder_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GVariantBuilder>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GVariantBuilder>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GVariantBuilder`.
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(op)
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Reference intialiser for a related type that implements `VariantBuilderProtocol`
    /// Will retain `GVariantBuilder`.
    /// - Parameter other: an instance of a related type that implements `VariantBuilderProtocol`
    @inlinable public init<T: VariantBuilderProtocol>(_ other: T) {
        ptr = other.ptr
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Releases the underlying `GVariantBuilder` instance using `g_variant_builder_unref`.
    deinit {
        g_variant_builder_unref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Allocates and initialises a new `GVariantBuilder`.
    /// 
    /// You should call `g_variant_builder_unref()` on the return value when it
    /// is no longer needed.  The memory will not be automatically freed by
    /// any other call.
    /// 
    /// In most cases it is easier to place a `GVariantBuilder` directly on
    /// the stack of the calling function and initialise it with
    /// `g_variant_builder_init()`.
    @inlinable public init<VariantTypeT: VariantTypeProtocol>( type: VariantTypeT) {
        let rv = g_variant_builder_new(type.variant_type_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no VariantBuilder properties

// MARK: no VariantBuilder signals


// MARK: VariantBuilder Record: VariantBuilderProtocol extension (methods and fields)
public extension VariantBuilderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVariantBuilder` instance.
    @inlinable var variant_builder_ptr: UnsafeMutablePointer<GVariantBuilder>! { return ptr?.assumingMemoryBound(to: GVariantBuilder.self) }


    // *** add() is not available because it has a varargs (...) parameter!



    // *** addParsed() is not available because it has a varargs (...) parameter!


    /// Adds `value` to `builder`.
    /// 
    /// It is an error to call this function in any way that would create an
    /// inconsistent value to be constructed.  Some examples of this are
    /// putting different types of items into an array, putting the wrong
    /// types or number of items in a tuple, putting more than one value into
    /// a variant, etc.
    /// 
    /// If `value` is a floating reference (see `g_variant_ref_sink()`),
    /// the `builder` instance takes ownership of `value`.
    @inlinable func add<VariantT: VariantProtocol>(value: VariantT) {
        g_variant_builder_add_value(variant_builder_ptr, value.variant_ptr)
    
    }

    /// Releases all memory associated with a `GVariantBuilder` without
    /// freeing the `GVariantBuilder` structure itself.
    /// 
    /// It typically only makes sense to do this on a stack-allocated
    /// `GVariantBuilder` if you want to abort building the value part-way
    /// through.  This function need not be called if you call
    /// `g_variant_builder_end()` and it also doesn't need to be called on
    /// builders allocated with `g_variant_builder_new()` (see
    /// `g_variant_builder_unref()` for that).
    /// 
    /// This function leaves the `GVariantBuilder` structure set to all-zeros.
    /// It is valid to call this function on either an initialised
    /// `GVariantBuilder` or one that is set to all-zeros but it is not valid
    /// to call this function on uninitialised memory.
    @inlinable func clear() {
        g_variant_builder_clear(variant_builder_ptr)
    
    }

    /// Closes the subcontainer inside the given `builder` that was opened by
    /// the most recent call to `g_variant_builder_open()`.
    /// 
    /// It is an error to call this function in any way that would create an
    /// inconsistent value to be constructed (ie: too few values added to the
    /// subcontainer).
    @inlinable func close() {
        g_variant_builder_close(variant_builder_ptr)
    
    }

    /// Ends the builder process and returns the constructed value.
    /// 
    /// It is not permissible to use `builder` in any way after this call
    /// except for reference counting operations (in the case of a
    /// heap-allocated `GVariantBuilder`) or by reinitialising it with
    /// `g_variant_builder_init()` (in the case of stack-allocated). This
    /// means that for the stack-allocated builders there is no need to
    /// call `g_variant_builder_clear()` after the call to
    /// `g_variant_builder_end()`.
    /// 
    /// It is an error to call this function in any way that would create an
    /// inconsistent value to be constructed (ie: insufficient number of
    /// items added to a container with a specific number of children
    /// required).  It is also an error to call this function if the builder
    /// was created with an indefinite array or maybe type and no children
    /// have been added; in this case it is impossible to infer the type of
    /// the empty array.
    @inlinable func end() -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_variant_builder_end(variant_builder_ptr)))
        return rv
    }

    /// Initialises a `GVariantBuilder` structure.
    /// 
    /// `type` must be non-`nil`.  It specifies the type of container to
    /// construct.  It can be an indefinite type such as
    /// `G_VARIANT_TYPE_ARRAY` or a definite type such as "as" or "(ii)".
    /// Maybe, array, tuple, dictionary entry and variant-typed values may be
    /// constructed.
    /// 
    /// After the builder is initialised, values are added using
    /// `g_variant_builder_add_value()` or `g_variant_builder_add()`.
    /// 
    /// After all the child values are added, `g_variant_builder_end()` frees
    /// the memory associated with the builder and returns the `GVariant` that
    /// was created.
    /// 
    /// This function completely ignores the previous contents of `builder`.
    /// On one hand this means that it is valid to pass in completely
    /// uninitialised memory.  On the other hand, this means that if you are
    /// initialising over top of an existing `GVariantBuilder` you need to
    /// first call `g_variant_builder_clear()` in order to avoid leaking
    /// memory.
    /// 
    /// You must not call `g_variant_builder_ref()` or
    /// `g_variant_builder_unref()` on a `GVariantBuilder` that was initialised
    /// with this function.  If you ever pass a reference to a
    /// `GVariantBuilder` outside of the control of your own code then you
    /// should assume that the person receiving that reference may try to use
    /// reference counting; you should use `g_variant_builder_new()` instead of
    /// this function.
    @inlinable func init_<VariantTypeT: VariantTypeProtocol>(type: VariantTypeT) {
        g_variant_builder_init(variant_builder_ptr, type.variant_type_ptr)
    
    }

    /// Opens a subcontainer inside the given `builder`.  When done adding
    /// items to the subcontainer, `g_variant_builder_close()` must be called. `type`
    /// is the type of the container: so to build a tuple of several values, `type`
    /// must include the tuple itself.
    /// 
    /// It is an error to call this function in any way that would cause an
    /// inconsistent value to be constructed (ie: adding too many values or
    /// a value of an incorrect type).
    /// 
    /// Example of building a nested variant:
    /// (C Language Example):
    /// ```C
    /// GVariantBuilder builder;
    /// guint32 some_number = get_number ();
    /// g_autoptr (GHashTable) some_dict = get_dict ();
    /// GHashTableIter iter;
    /// const gchar *key;
    /// const GVariant *value;
    /// g_autoptr (GVariant) output = NULL;
    /// 
    /// g_variant_builder_init (&builder, G_VARIANT_TYPE ("(ua{sv})"));
    /// g_variant_builder_add (&builder, "u", some_number);
    /// g_variant_builder_open (&builder, G_VARIANT_TYPE ("a{sv}"));
    /// 
    /// g_hash_table_iter_init (&iter, some_dict);
    /// while (g_hash_table_iter_next (&iter, (gpointer *) &key, (gpointer *) &value))
    ///   {
    ///     g_variant_builder_open (&builder, G_VARIANT_TYPE ("{sv}"));
    ///     g_variant_builder_add (&builder, "s", key);
    ///     g_variant_builder_add (&builder, "v", value);
    ///     g_variant_builder_close (&builder);
    ///   }
    /// 
    /// g_variant_builder_close (&builder);
    /// 
    /// output = g_variant_builder_end (&builder);
    /// ```
    /// 
    @inlinable func open<VariantTypeT: VariantTypeProtocol>(type: VariantTypeT) {
        g_variant_builder_open(variant_builder_ptr, type.variant_type_ptr)
    
    }

    /// Increases the reference count on `builder`.
    /// 
    /// Don't call this on stack-allocated `GVariantBuilder` instances or bad
    /// things will happen.
    @discardableResult @inlinable func ref() -> VariantBuilderRef! {
        guard let rv = VariantBuilderRef(gconstpointer: gconstpointer(g_variant_builder_ref(variant_builder_ptr))) else { return nil }
        return rv
    }

    /// Decreases the reference count on `builder`.
    /// 
    /// In the event that there are no more references, releases all memory
    /// associated with the `GVariantBuilder`.
    /// 
    /// Don't call this on stack-allocated `GVariantBuilder` instances or bad
    /// things will happen.
    @inlinable func unref() {
        g_variant_builder_unref(variant_builder_ptr)
    
    }


}


